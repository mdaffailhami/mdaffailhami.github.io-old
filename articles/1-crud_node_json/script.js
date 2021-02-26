/**
 * @author [Muhammad Daffa Ilhami]
 * @email [mdaffailhami@gmail.com]
 * @create date 2021-02-12 | 12:04:52
 * @modify date 2021-02-12 | 14:25:50
 * @desc [description]
 */

function platformElement() {
  if (window.innerWidth <= 766) {
    document.body.classList.add("mobile");
    document.body.classList.remove("desktop");
  } else {
    document.body.classList.add("desktop");
    document.body.classList.remove("mobile");
  }
}

platformElement();
window.addEventListener("resize", () => {
  platformElement();
});
