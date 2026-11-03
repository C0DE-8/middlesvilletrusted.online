import styles from "./LogoPreloader.module.css";
import { BRAND_MARK } from "../../constants/brand";

export default function LogoPreloader({ label = "Loading", compact = false, overlay = false, fullPage = false }) {
  return (
    <div
      className={`${styles.preloader} ${compact ? styles.compact : ""} ${overlay ? styles.overlay : ""} ${
        fullPage ? styles.fullPage : ""
      }`}
      role="status"
      aria-live="polite"
    >
      <span className={styles.logoRing} aria-hidden="true">
        <img src={BRAND_MARK} alt="" />
      </span>
      <span>{label}</span>
    </div>
  );
}
