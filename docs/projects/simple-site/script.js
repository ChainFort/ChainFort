document.addEventListener('DOMContentLoaded', () => {
  const btn = document.getElementById('actionBtn');
  const output = document.getElementById('output');
  const year = document.getElementById('year');
  year.textContent = new Date().getFullYear();
  btn.addEventListener('click', () => {
    output.innerHTML = `<p>¡Botón pulsado en ${new Date().toLocaleTimeString()}!</p>`;
  });
});