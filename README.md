---
title: '海洋動力學_1091'
---
{%hackmd SybccZ6XD %}

[雲端硬碟](https://drive.google.com/drive/u/2/folders/1MPLsIrH_CHPmUOJzr2o92jMA1C_6NuL9)
:star:
###### tags: `NTOU_1091` `海洋學科` `Book`
# Final-term_1091
## 1081-Mid
### 1. 解釋名詞

#### Richardson number (:star:CH7.4 Dynamic stability:star:)
![](https://i.imgur.com/S79m3Xc.png)

#### eddy viscosity (:star::star:)
![](https://i.imgur.com/ysSqmG7.png)

### 2. (:star:CH6.33 Gravitation and gravity:star:)
- [x] (8%)

#### (a) Please draw a sketch showing the relationship between the gravitational acceleration $g_f$ and the acceleration due to gravity g.
$$
g_f\text{ : 重力加速度}\\
g\text{ : 因重力產生的加速度}\\
\Omega\times(\Omega\times R)\text{ : 向心加速度}\\
-\Omega\times(\Omega\times R)\text{ : 離心加速度}\\
$$
![](https://i.imgur.com/Tz7Qyck.png)

#### (b) Where have the maximum and minimum values of g, respectively? And why?
1. The maximum values of g at the poles.
    在極點($90^o$N、$90^o$S)，所需的向心加速度$\Omega\times(\Omega\times R)$消失了，並且因為在極點的地球半徑是最小的，所以$g_f$的值也在此處最大，因此 g 的最大值出現在極點。

2. The minimum values of g at the equator.
    在赤道($0^o$)，所需的向心加速度$\Omega\times(\Omega\times R)$為最大值，並且因為在赤道的地球半徑是最大的，所以$g_f$的值也在此處最小，因此 g 的最小值出現在赤道。
### 3. (:star:CH6.31 The pressure term:star:)
- [x] done 

#### Please show how can we derive the pressure term in the equation of motion? Write down your answer clearly about every statement. In case, you can just show the pressure term in the x-component momentum equation.
![](https://i.imgur.com/yLyJNXb.png)

![](https://i.imgur.com/khCYIsJ.png)

## 1081-Final
Introductory Dynamical Oceanography Final Exam (1/7/2020)

### 1. (:star:CH9.3:star:)
- [x] (15%)

#### (a) What is the physical meaning of Ekman's theory? (explain what kind of forces balance).
:::success
$$\begin{cases}
fv+A_z{\partial^2 u\over\partial z^2} = \alpha {\partial p\over\partial x} \\
-fu+A_z{\partial^2 v\over\partial z^2} = \alpha {\partial p\over\partial y}
\end{cases}
 (式9.6)
$$
:::
根據Ekman的第5個假說，若是均勻的海水(homogeneous water)，正壓條件下，海水密度由壓力決定，造成 ${\partial p\over\partial x}={\partial p\over\partial y}=0$，因此沒有地轉流產生。
:::success
$$\begin{cases}
fv+A_z{\partial^2 u\over\partial z^2} = 0 \\
-fu+A_z{\partial^2 v\over\partial z^2} = 0
\end{cases}
 (式9.8)
$$
:::
因此在物理意義上，Ekman的風吹流理論是科氏力(Coriolis force)與風剪力(net frictional stress)平衡的結果。
#### (b) Based on what concepts, Ekman simplified the above governing equations as the balance between two forces? Please show the detail how to obtain the simplified Ekman's equations.
根據Ekman的第5個假說，若是均勻的海水(homogeneous water)，正壓條件下，海水密度由壓力決定，造成 ${\partial p\over\partial x}={\partial p\over\partial y}=0$，因此沒有地轉流產生。
:::success
$$\begin{cases}
fv+A_z{\partial^2 u\over\partial z^2} = 0 \\
-fu+A_z{\partial^2 v\over\partial z^2} = 0
\end{cases}
 (式9.8)
$$
:::
#### ( c ) What is the Ekman depth?
風吹流產生作用的最深深度，在這個深度的風吹流方向和海表面風吹流流向正好相反。
#### (d) What is the Ekman Spiral?
以北半球為例，風吹流在海洋表面的流向為風向向右偏轉45度，隨著深度越來越深，上層水流動時會拖曳下方流體運動，風吹流流速隨深度增加而下降，且海流的偏轉角度也隨著深度增加，到達Ekman深度時，風吹流方向和海表面風吹流流向正好相反，水流流向由水面向下呈現螺線型態的旋轉構造。

#### (e) What is the empirical formula to calculate the wind stress magnitude, $\tau_\eta$? Please explain each term.
:::success
$$
\bbox[5px,border:2px solid red]
{
\tau_\eta=\rho_a \times C_D\times W^2
}
$$
$\rho_a$ = 空氣密度(the density of air)
$C_D$ = 拖曳係數(the drag coefficient)
$W$ = 風速(the wind speed in m/s)
:::
### 2. (:star:CH8:star:)
- [x] (6%)

#### (a) Please explain what is the barotropic and baroclinic condition, respectively? (CH8 p.68)
1. barotropic condition
當流體的密度是壓力的函數($\rho=\rho(p)$)時，如同在位溫(potential temperature)均勻的淡水中，導致流場的所有等壓面和等密面皆互相平行。
2. baroclinic condition
當流體的密度不只是是壓力的函數且在水平面上隨著其參數改變時，可能是海水溫度、鹽度及壓力的改變($\rho=\rho(s,t,p)$)，導致流場的等壓面和等密面並非平行於彼此，會產生交角。
#### (b) Show the "thermal wind" equations from the geostrophic equations and the hydrostatic equation.
$$
地轉流方程式
\begin{cases}
fv - \alpha {\partial p\over\partial x}=0 \\
-fu-\alpha {\partial p\over\partial y}=0
\end{cases}
 (式8.10)
$$
1. from the geostrophic equations
$$
\text{geostrophic equations}
\begin{cases}
fv =\alpha {\partial p\over\partial x} \\
-fu=\alpha {\partial p\over\partial y}
\end{cases}
 (式8.10)\\
\implies
\begin{cases}
{\partial\over\partial z}(\rho fv) ={\partial\over\partial z}( {\partial p\over\partial x})={\partial\over\partial x}( {\partial p\over\partial z}) \\
{\partial\over\partial z}(\rho fu) ={\partial\over\partial z}( -{\partial p\over\partial y})=-{\partial\over\partial y}( {\partial p\over\partial z})
\end{cases}
$$
2. from the hydrostatic equation
$$
\text{"thermal wind" equations}
\begin{cases}
fv =\alpha {\partial p\over\partial x} \\
-fu=\alpha {\partial p\over\partial y}
\end{cases}
 (式8.10)\\
\implies
\text{Using hydrostatic equation,  }
\bbox[5px,border:2px solid red]
{
{\partial p\over\partial z} = -\rho g
}\\
\implies
\begin{cases}
{\partial\over\partial z}(\rho fv)=-g{\partial \rho\over\partial x} \\
{\partial\over\partial z}(\rho fu)=g{\partial \rho\over\partial y} \\
\end{cases}
$$
### 3. (:star:CH9.14.2:star:)
- [x] (12%) 

Stommel assumes a two-layer model. The upper layer has density $\rho_1$ and is moving；the lower layer has density $\rho_2$ and is at rest. If $\eta$ is the surface elevation and d is the level of the interface between the layers, please answer the following questions:

#### (a)What are the pressures in the upper and lower layers, respectively? 
#### (b)From (a), what is the horizontal pressure gradient in the upper and lower layers, respectively? You can just show the x-component for example.

#### ( c ) What is "reduced gravity"? (:open_book:CH9.14.2)
Note: The hydrostatic equation is dp = -pgdz.
:::success
$$
g' = {(\rho_2-\rho_1)\over\rho_2}\times g\\
$$
:::
### 4. (:star:CH9.5 : Sverdrup's solution for the wind-driven circulation:star:)
- [x] (10%) 

From the governing equations
:::success
$$\begin{cases}
\alpha {\partial p\over\partial x} =fv+\alpha{\partial \tau_x\over\partial z}  \\
\alpha {\partial p\over\partial y}= -fu+\alpha{\partial \tau_y\over\partial z}
\end{cases}
 (式9.6')
$$
:::

Please show how to obtain the Sverdrup equation, $\beta M_y= curl_z \overrightarrow\tau_\eta$ (式9.21)?

### 5. (:star:9.13 The equatorial current system:star:)
- [x] (10%) 
#### Please describe the equatorial current systems in the Pacific, Atlantic and Indian Oceans, respectively. 
(Note: surface and sub-surface if possible)
(:star:9.52 Application of the Sverdrup equations:star:)
![](https://i.imgur.com/8tI85vl.png)
![](https://i.imgur.com/k7gtLei.png)

![](https://i.imgur.com/7DpqDNR.png)

![](https://i.imgur.com/xZ0IV2y.png)
1. ==The surface equatorial currents==
The equatorial current system is: zonal character with westward- following North and South Equatorial Currents and, between them, the eastward North Equatorial Countercurrent.
2. ==The Equatorial Undercurrent==
Beneath the surface and embedded in the westward-following Pacific ==South Equatorial Current== there exists a most remarkable current : the Equatorial Undercurrent.
### 6. (:star:CH9.14.2:star:)
- [x] (9%) 

#### (a) Please explain what is the Rossby radius of deformation and its physical meaning? 
Note: external and internal, respectively. (CH9.14.2 p.120)
![](https://i.imgur.com/q4SMnRt.png)

#### (b) If in coastal waters the scales are h = 10 m, please estimate roughly what is the scale of the internal Rossby radius of deformation?
:::success
$$
{(\rho_2-\rho_1)\over\rho_2}\approx2\times10^{-3}\\
{\lambda_i={\sqrt{g'D_0}\over f}= {\sqrt{9.8\times 2\times10^{-3}\times 10}\over10^{-4}}}-=4.4272e+03\approx 4.4 km\\
$$
:::
### 7. :black_nib:(:star:CH9.12:star:)
- [x] (10%) 

#### (a) Stommel was the first one to present an explanation for the westward intensification. Please describe what physical mechanisms are responsible for the westward intensification? 
假設海洋底部是平坦的，且風應力隨緯度變化；在旋轉中的地球上，科氏參數 $f$ 隨緯度變化，而科氏參數是大洋環流的動力特徵，造成大洋西邊海流強化的結果。
#### (b) Please use the conservation of vorticity to interpret the western intensification of the ocean currents. [CH9.12]
:::success
$$
{\xi+f\over D}={constant} \\
$$
:::
以北半球的太平洋為例，靠近赤道位於南方的風向為東風(吹向西)，遠離赤道位於北方的風向為西風(吹向東)。在東太平洋，因風應力造成的渦度為負，海流流向南，因此隨著海流越來越靠近赤道，科氏參數(f)減少，相對渦度由於位渦守恆而增加，形成正渦度，此時，東太平洋的兩種相對渦度一增一減，正好平衡。然而在西太平洋，因風應力造成的渦度同樣為負，海流流向北，因此隨著海流越來越遠離赤道，科氏參數(f)增大，相對渦度由於位渦守恆而減少，也形成負渦度，此時，西太平洋的兩種對相渦度皆為負，無法平衡，若要使整個北太平洋環流系統的總渦度守恆，方法是在西太平洋增加一項水平摩擦剪力渦度，且為正渦度，此渦度為了要平衡其他兩項負渦度，渦度大小勢必會是整個北太平洋中最強的，因而形成了西邊強化流，也就是黑潮。
![](https://i.imgur.com/Np5w2RU.png)

### 8.  (:star:CH9.11.4:star:)
- [x] (10%) 

#### (a) Please write down the equation the conservation of the potential vorticity and explain its physical meaning. 
![](https://i.imgur.com/kGNXT2j.png)
:::success
$$
\text{the conservation of the potential vorticity:}\\
{d\over dt}({\xi+f\over D})=0 \\
$$
:::
$$
\text{explain its physical meaning:}\\
\text{位渦守恆是對於流體的角動量守恆，}(mr^2\omega)\\
\text{當水體的深度增加(水柱被拉長)，旋轉半徑減小，角速度}(\omega)\text{增加，絕對渦度會隨之增加；}\\
\text{反之，當水體的深度減小，旋轉半徑變大，角速度}(\omega)\text{降低，絕對渦度會隨之減少}\\
$$
![](https://i.imgur.com/BQ98vhO.png)
$$
\text{根據質量守恆定理，推導出連續體積方程式}\\
{\partial u\over \partial x}+{\partial v\over \partial y}=0 \\
\text{(假設由海表面至海底的密度皆相同，所以水平流速分量和深度互相獨立)}
$$
#### (b) Please discuss the following situations, we can make some predictions about vorticity changes when a parcel of water moves from one place to another. (CH9.11.4)

##### :one: if D remains constant
![](https://i.imgur.com/4kRCDP5.png)

###### :a: If a column of water moves zonally.

###### :b: If a column of water moves meridionally toward the north pole.

##### :two: If D increases,
![](https://i.imgur.com/05QrecR.png)

###### :a: If the water moves zonally.

###### :b: If the water moves meridionally toward the south pole.

### 9. (:x:Chap 10 Thermohaline Effects:x:)
- [x] (6%) 

Please interpret in your words what is the Stommel's model for the thermohaline (deep) circulation?

### 10. (:star:CH8.2 Inertial motion:star:)
- [x] (16%)

#### (a) Under what assumptions we can obtain the inertial equations?
:::success
$$\begin{cases}
{\partial p\over\partial x}={\partial p\over\partial y}=0  \\
\overrightarrow F=0\\
w=0
\end{cases}
 (式8.3)
$$
:::
#### (b) Derive the solution of u and v. (:star:CH8.2:star:)
![](https://i.imgur.com/WU5n85R.png)
![](https://i.imgur.com/VLjthwa.png)
![](https://i.imgur.com/nrkvbft.png)
![](https://i.imgur.com/2rmXt5X.png)

#### ( c ) What are the radius and the period of inertial oscillation?
![](https://i.imgur.com/yJD3JSQ.png)
the radius of inertial oscillation$= {{\sqrt {u^2+v^2}}\over f }={V_H\over f}$
![](https://i.imgur.com/xxNxkCB.png)
the period of inertial oscillation$={2\pi\over f}$
#### (d) What is the traveling direction of inertial circle in the northern hemi-sphere?
![](https://i.imgur.com/FMYJXYP.png)

## 1071-Final
### Introductory Dynamical Oceanography Final Exam (12/25/2018)

### 1. (:star:CH8.2:star:) 
- [ ] (15%)

(a) What is the physical meaning of Ekman's theory? (explain what kind of forces

balance).

fv+ A, a'u дх

- fut A = др

(b) Based on what concepts, Ekman simplified the above governing equations as the balance between two forces? Please show the detail how to obtain the

simplified Ekman's equations.

(c) What is the Ekman depth?

(d) What is the Ekman Spiral?

(e) What is the empirical formula to calculate the wind stress magnitude, T,?

Please explain each term.

### 2. 
- [ ] (6%)

Z=Paca w

(a) Please explain what is the barotropic and baroclinic condition, respectively? (b) Show the thermal wind" equations from the geostrophic equations and the hydrostatic equation.

### 3. 
- [ ] (12%) 

Stommel assumes a two-layer model. The upper layer has density pi and is moving; the lower layer has density p and is at rest. If 7 is the surface elevation and d is the level of the interface between the layers, please answer the following questions: (a)What are the pressures in the upper and lower layers, respectively?

(b)From (a), what is the horizontal pressure gradient in the upper and lower layers, respectively? You can just show the x-component for example. (c)What is "reduced gravity"?

Note: The hydrostatic equation is dp =-pgdz.

### 4. 
- [ ] (10%) 

From the governing equations

др =fv+a

дх

Op =-fu+a

Please show how to obtain the Sverdrup equation. M = curl. 7,?

### 5. 
- [ ] (10%) 

Please describe the equatorial current systems in the Pacific, Atlantic and Indian Oceans, respectively. (Note: surface and sub-surface if possible) 
### 6. 
- [ ] (6%) 

Please explain what is the Rossby radius of deformation and its physical

meaning? Note: barotropic and baroclinic, respectively.

### 7. 
- [ ] (10%) 

(a) Stommel was the first one to present an explanation for the westward intensification. Please describe what physical mechanisms are responsible for the westward intensification? (6) Please use the conservation of vorticity to interpret the western intensification of the ocean currents.

### 8. 
- [ ] (10%) 

(a) Please write down the equation the conservation of the potential vorticity and explain its physical meaning. 
(b) Please discuss the following situations, we can make some predictions about vorticity changes when a parcel of water moves from one place to another.

#### (1) if D remains constant 
##### (a) If a column of water moves zonally.

##### (b) If a column of water moves meridionally toward the north pole.

#### (2) If D increases,

##### (a) If the water moves zonally.

##### (b) If the water moves meridionally toward the south pole.

### 9. (:x:Chap 10 Thermohaline Effects:x:)
- [ ] (6%) 

Please interpret in your words what is the Stommel's model for the thermohaline (deep) circulation?

### 10.
- [ ] (5%) 

[CH9.9]
Please show the main features of the general pattern of the global winds.

没有陸地的行星風場
![](https://i.imgur.com/GHFRS6h.png)

### 11. 
- [ ] (10%)

What is the definition of the following technical words used in oceanography? 
#### (a) Ekman pumping [CH9.6 (7)]
[艾克曼汲吸](http://terms.naer.edu.tw/detail/3359170/):

![](https://i.imgur.com/vfQI0MW.png)
![](https://i.imgur.com/2wRnc68.png)

![](https://i.imgur.com/Rf5lIw4.png)

![](https://i.imgur.com/gaHS6gc.png)

![](https://i.imgur.com/zmbsEkO.png)

#### (b) isopycnal surface [CH8.7]
[等密面](http://terms.naer.edu.tw/detail/3360647/)
![](https://i.imgur.com/BZISHLg.png)

#### ( c ) cyclonic
[氣旋](https://terms.naer.edu.tw/detail/2924733/)
![](https://i.imgur.com/KYtrDsM.png)

#### (d) geopotential [CH8.3]
[重力位](http://terms.naer.edu.tw/detail/3395933/)
![](https://i.imgur.com/dbp2ZWE.png)

#### (e) level of no motion (:star:CH8.5:star:)
[不動水層](http://terms.naer.edu.tw/detail/366332/)
流速在某一深度被指定為0的海水面。
An ocean surface at a depth where the current speed is assumed to be zero.
# Ch1_

# Ch2_

# Ch3_

# Ch4_

# Ch5_


# Ch6_The Equation of Motion in Oceanography

# Ch7_The role of the non-linear terms and the magnitudes of terms in the equations of motion


# Ch8_Currents without friction: Geostrophic flow

# Ch9_Currents with Friction; Wind-driven Circulation
[ocng608-9-1.pdf](https://drive.google.com/file/d/1Miucr_dQa53gGBjPDYOEnRMK6cp-HqE1/view?usp=sharing)

## W15 作業
[bottom_Ekman.pdf](https://drive.google.com/file/d/1cVwTWePwpikqwg9CkNrsC4f6YJDkXHW3/view?usp=sharing)
Applying Ekman’s theory to the bottom friction layer.

