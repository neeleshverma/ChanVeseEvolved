# Implementation of Chan-Vese and its extension for RGB and multi-phase segmentation  

### File contents  
<ul>
<li>Images:  
    <ul>
      <li><em>Baseline</em>: Images to segment </li> 
      <li><em>Results</em>: results of baseline images </li>
    </ul>
</li> 
<li>Matlab files:  
  <ul>
    <li>checkstop.m </li>
    <li>chenvese.m </li>
    <li>demo_chenvese.m </li> 
    <li>Heaviside.m </li>
    <li>kappa.m </li>
    <li>maskcircle2.m </li>  
    <li>reinitialization.m </li> 
    <li>showphi.m </li>
  </ul>
</li>


### Matlab file functions 
<ul>
 <li><em>checkstop.m</em>: check whether curve evolution is stable to stop </li>
 <li><em>chenvese.m</em>: main function, executes active contours without edges algorithm </li>
 <li><em>demo_chenvese.m</em>: demos </li>
 <li><em>Heaviside.m</em>: Heaviside function </li>
 <li><em>kappa.m</em>: calculate image curvature </li>
 <li><em>maskcircle2.m</em>: create built-in mask </li>
 <li><em>reinitialization.m</em>: re-initialize phases for multiphase case </li> 
 <li><em>showphi.m</em>: display intermediate results </li>
</ul>

The demo is written in cell structure, please execute cells one by one. All other functions above are called by the main function: CHENVESE.


### Running the Code

Simply run demo_chenvese.m with the appropriate path for images  

The report can be found here - [Report](https://github.com/neeleshverma/ChanVeseEvolved/blob/main/Chan_Vese_Report.pdf)
