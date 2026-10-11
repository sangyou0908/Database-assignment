"use client";

import Link from "next/link";
import { deleteDoc, doc, setDoc } from "firebase/firestore";
import { db } from "@/lib/firebase";
import { useAuthStore } from "@/stores/authStore";
import type { Movie } from "@/types/movie";
import { useFavoritesStore } from "@/stores/favoritesStore";
import styles from "./MovieCard.module.css";

type MovieCardProps = {
  movie: Movie;
};

export default function MovieCard({ movie }: MovieCardProps) {
  const user = useAuthStore((state) => state.user);
  const favorites = useFavoritesStore((state) => state.favorites);
  const setFavorites = useFavoritesStore((state) => state.setFavorites);

  const isFavorite = favorites.some((favorite) => favorite.movieId === movie.id);

  async function handleFavorite() {
    if (!user) return;
    const favoriteId = `${user.uid}_${movie.id}`;
    const favoriteRef = doc(db, "favorites", favoriteId);

    try {
      if (isFavorite) {
        await deleteDoc(favoriteRef);
        setFavorites((prev) => prev.filter((favorite) => favorite.movieId !== movie.id));
      } else {
        const favoriteData = { userId: user.uid, movieId: movie.id };
        await setDoc(favoriteRef, favoriteData);
        setFavorites((prev) => [...prev, favoriteData]);
      }
    } catch (error) {
      console.error(error);
    }
  }

  return (
    <article className={styles.card}>
      <h2>{movie.title}</h2>
      <p>평점: {movie.vote_average}</p>

      <p>
        {movie.poster_path !== null
          ? movie.poster_path
          : "포스터 없음"}
      </p>

      <button
        type="button"
        onClick={handleFavorite}
        disabled={!user}
        aria-pressed={isFavorite}
        className={`${styles.favoriteButton} ${isFavorite ? styles.favorited : ""}`}
      >
        <span className={styles.favoriteIcon} aria-hidden="true">
          {isFavorite ? "♥" : "♡"}
        </span>
        {!user ? "로그인 후 찜하기" : isFavorite ? "찜 해제" : "찜하기"}
      </button>

      <Link href={`/movies/${movie.id}`}>
        상세 보기
      </Link>
    </article>
  );
}
