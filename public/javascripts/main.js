function copy(text) {
  if (window.clipboardData) {
    window.clipboardData.setData("Text",text);
  }
}