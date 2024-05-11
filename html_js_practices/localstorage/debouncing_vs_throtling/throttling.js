
// const throttleScrollHandler = throttle(handleScrolling, 2000);
const throttleScrollHandler = throttleTwo(handleScrolling, 2000);
document.addEventListener("scroll", throttleScrollHandler);

function handleScrolling(event) {
  console.log("windows scrolled", event);
}

function throttleTwo(func, limit) {
  let inThrottle;

  return function () {
    const args = arguments;
    const context = this;
    if (!inThrottle) {
      func.apply(context, args);
      inThrottle = true;
      setTimeout(() => inThrottle = false, limit);
    }
  }
}

function throttle(func, limit) {
  let lastFunc;
  let lastRan;
  let waitingTime;

  return (...args) => {
    if (!lastRan) {
      func(...args);
      lastRan = Date.now();
    } else {
      clearTimeout(lastFunc);
      waitingTime = limit - (Date.now() - lastRan);
      lastFunc = setTimeout(() => {
        if ((Date.now() - lastRan) >= limit) {
          func(...args);
          lastRan = Date.now();
        }
      }, waitingTime)
    }
  }
}
