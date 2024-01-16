document.addEventListener("DOMContentLoaded", () => {
  const normal = document.getElementById("normal-value");
  const debouncing = document.querySelector("#debouncing-value");
  const inputValue = document.querySelector("input");

  const updateDebounceText = debounce(text => {
    debouncing.textContent = text;
  }, 1000);

  const updateNormalText = (text) => {
    normal.textContent = text;
  }

  inputValue.addEventListener("input", e => {
    updateNormalText(e.target.value);
    updateDebounceText(e.target.value);
  });
})

function debounce(callback, delay = 1000) {
  let timeout;

  return (...args) => {
    clearTimeout(timeout);
    timeout = setTimeout(() => {
      callback(...args);
    }, delay)
  }
}
