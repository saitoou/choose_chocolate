import { Chart } from "chart.js";

const choco = document.getElementById("chart");
const chocoIdChart = choco.dataset.chocoId;
const sweetValue = choco.dataset.sweetValue
const cacaoValue = choco.dataset.cacaoValue
const appearanceValue = choco.dataset.appearanceValue
const textureValue = choco.dataset.textureValue
const meltValue = choco.dataset.meltValue


const  ctx = document.getElementById("myChart").getContext('2d');
const myChart = new Chart(ctx, {
  type: 'radar',
  data: {
    labels: ["Sweet", "Cacao", "Appearance", "Texture", "Melt"],
    datasets: 
    [
      {
        label: '',
        backgroundColor: 'rgba(197,149,107,0.2)',
        borderColor: 'rgba(197,149,107,0.2)',
        data: [
          sweetValue,
          cacaoValue,
          appearanceValue,
          textureValue,
          meltValue
        ]
      }
    ]
  },
  options: {
    scale: {
      ticks: {
        suggestedMin: 0,
        suggestedMax: 5
      }
    }
  }
})
