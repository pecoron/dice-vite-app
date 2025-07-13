document.addEventListener("DOMContentLoaded", () => {
  const button = document.querySelector("#rollButton") as HTMLButtonElement;
  const result = document.querySelector("#result") as HTMLParagraphElement

    if (!button || !result) {
    console.error("要素が見つかりませんでした");
    return;
  }
  
  button.addEventListener("click", () => {
    const dice = Math.floor(Math.random() * 6) + 1;
    result.textContent = `🎲 サイコロの目は「${dice}」です！`;
  });
});