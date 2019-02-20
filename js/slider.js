'use strict';

function Slider (	table, 
					period,
					img, 
					playToggle, 
					arrow, 
					previus, 
					play, 
					next)
{
	this.img 			= 	document.querySelector(img);
	this.iconePlay 		= 	document.querySelector(playToggle);
	this.arrow 			= 	document.querySelector(arrow);
	this.buttonPrevious = 	document.querySelector(previus);
	this.buttonPlay 	= 	document.querySelector(play);
	this.buttonNext 	= 	document.querySelector(next);
	this.table 			= 	table;
	this.period			=	period,
	this.timer1 		= 	null;
	this.timer2 		= 	null;
	this.timer3			=	null;
	this.timer4			=	null;
	this.index 			= 	1;
	this.opacity 		= 	1;
	this.goToNext 		= 	function()
	{
		this.index++;
		if(this.index >= table.length)
			{
				this.index = 0;
			};
		this.img.src = this.table[this.index].image;
		this.img.alt = this.table[this.index].alt;
	};

	this.play 			= 	function()
	{
		if (this.timer1 == null)
		{
			var that = this;
			this.timer1 = window.setInterval(function(){that.goToNext()}, this.period);
		}
		else
		{
			window.clearInterval(this.timer1);
			this.timer1 = null;
		};
	};

	this.iconeToggle 	= 	function(moins, plus)
	{
		this.iconePlay.classList.remove(moins);
		this.iconePlay.classList.add(plus);
	};

	this.opacityLess = function() 
	{
		var that = this;
		this.opacity = this.opacity - 0.01;
		this.img.style.opacity = this.opacity.toString();
		this.timer2 = window.setTimeout(function(){that.opacityLess()}, 5);
		if (this.opacity<=0)
		{
			window.clearTimeout(this.timer2);
		};
	};

	this.opacityMore = function()
	{
		var that = this;
		this.opacity = this.opacity + 0.01;
		this.img.style.opacity = this.opacity.toString();
		this.timer2 = window.setTimeout(function(){that.opacityMore()}, 5);
		if (this.opacity>=1)
		{
			window.clearTimeout(this.timer2);
		};
	};

	this.opacityPeriod = function()
	{
		var that = this;
		this.opacityLess();
		window.setTimeout(function(){that.opacityMore()}, 1200);
	};

};

Slider.prototype.nextSlide = function() 
{
	
		this.iconeToggle('fa-pause', 'fa-play');
		this.iconePlay.title = "Arreter le diaporama";
		window.clearInterval(this.timer1);
		window.clearTimeout(this.timer4);
		window.clearInterval(this.timer3);
		this.timer4 = null;
		this.timer1 = null;
		this.timer3 = null;
		

	this.goToNext();
};

Slider.prototype.previousSlide = function()
{
		this.iconeToggle('fa-pause', 'fa-play');
		this.iconePlay.title = "Arreter le diaporama";
		window.clearInterval(this.timer1);
		window.clearTimeout(this.timer4);
		window.clearInterval(this.timer3);
		this.timer4 = null;
		this.timer1 = null;
		this.timer3 = null;
		
	this.index--;

	if(this.index < 0)
		{
			this.index = this.table.length - 1;
		}

	this.img.src = this.table[this.index].image;
	this.img.alt = this.table[this.index].alt;
};


Slider.prototype.playSlider = function()
{
	
	if(this.iconePlay.classList.contains('fa-play'))
	{
		this.iconeToggle('fa-play', 'fa-pause');
	}
	else
	{
		this.iconeToggle('fa-pause', 'fa-play');
	};

	
	if(this.timer1 == null)
	{
		var that = this;
		this.timer3 = window.setInterval(function(){that.opacityPeriod()}, this.period);
		
		this.timer4 = window.setTimeout(function(){that.play()}, 1000);
		
		this.iconePlay.title = "Arreter le diaporama";
	}
	else
	{
		window.clearTimeout(this.timer4);
		window.clearInterval(this.timer1);
		window.clearInterval(this.timer3);
		this.timer1 = null;
		this.timer3 = null;
		this.timer4 = null;
		this.iconePlay.title = "Arreter le diaporama";
	};
};

Slider.prototype.hideNav = function(class1, class2, class3)
{
	this.arrow.classList.toggle(class1);
	this.arrow.classList.toggle(class2);
	this.buttonPrevious.classList.toggle(class3);
	this.buttonPlay.classList.toggle(class3);
	this.buttonNext.classList.toggle(class3);
};

	
