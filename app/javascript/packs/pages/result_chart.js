const choco = document.getElementById("chart");
const sweet = choco.dataset.sweetValue;
const cacao = choco.dataset.cacaoValue;
const appearance = choco.dataset.appearanceValue;
const texture = choco.dataset.textureValue;
const melt = choco.dataset.meltValue;

const  ctx = document.getElementById("myChart").getContext('2d');
const myChart = new Chart(ctx, {
  type: 'radar',
  data: {
    labels: ["Sweet", "Cacao", "Appearance", "Texture", "Melt"],
    datasets: [{
        label: '',
        data: [sweet, cacao, appearance, texture, melt],
        backgroundColor: 'rgba(197,149,107,0.5)',
        borderColor: 'rgba(197,149,107,1)',
        borderWidth: 1,
        pointBorderColor: '#fff',
      }]
  },
  options: {
    responsive: true,
    legend: {
      display: false
    },
    scale: {
      pointLabels: {
        fontSize: 30,
        fontFamily: 'Allison',
        fontColor: '#C5956B'
      },
      ticks: {
        suggestedMin: 0,
        suggestedMax: 5,
        stepSize: 1,
        fontSize: 12,
        callback: function(value) {
          return value
        }
      }
    }
  },
});
