# SLIDE 3 VIDEO CODE - VERBATIM EXTRACT
## From: DRSEY_PITCHTEXT_V3.html

---

## 1. HTML VIDEO ELEMENT (bg-video3)

```html
<video
  id="bg-video3"
  class="bg-video"
  autoplay
  muted
  playsinline
  preload="metadata"
  aria-hidden="true"
  tabindex="-1"
  disablepictureinpicture
  controlslist="nodownload noplaybackrate noptimizequality nodatachannel"
  volume="0"
  defaultMuted
  style="display: none;"
>
  <source src="HOLOGRAMJ.mp4" type="video/mp4" />
</video>
```

---

## 2. AUDIO ELEMENT (for video3)

```html
<audio
  id="obiwan-audio"
  preload="metadata"
  style="display: none;"
>
  <source src="OBIWAN_REAL.mp4" type="audio/mp4" />
</audio>
```

---

## 3. CSS STYLING FOR .bg-video

```css
/* Background video */
.bg-video {
  position: fixed;
  top: 50%;
  left: 60%;
  transform: translate(-50%, -50%) scaleX(0.8);
  width: calc(50vw - 2rem);
  height: calc(60vh - 2rem);
  object-fit: cover;
  object-position: center center;
  z-index: -1;
  pointer-events: none;
  display: none;
  filter: grayscale(1) brightness(0.64) contrast(1.2) sepia(1) hue-rotate(60deg) saturate(2);
  animation: videoFlicker 0.06s steps(1, end) infinite, hologramRoll 3s linear infinite, hologramGlitch 0.8s infinite;
  overflow: hidden;
}

/* Mobile video - 15% bigger */
@media (max-width: 768px) {
  .bg-video {
    width: calc(57.5vw - 2rem); /* 50vw * 1.15 = 57.5vw */
    height: calc(69vh - 2rem);  /* 60vh * 1.15 = 69vh */
  }
}

/* Add hologram container for better effect control */
.bg-video::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background: linear-gradient(
    0deg,
    transparent 0%,
    rgba(0, 255, 0, 0.1) 25%,
    rgba(0, 255, 0, 0.2) 50%,
    rgba(0, 255, 0, 0.1) 75%,
    transparent 100%
  );
  animation: verticalRoll 2s linear infinite;
  pointer-events: none;
  z-index: 1;
}
```

---

## 4. CSS ANIMATIONS FOR VIDEO EFFECTS

```css
/* Video flicker animation */
@keyframes videoFlicker {
  0% { filter: grayscale(1) brightness(0.64) contrast(1.2) sepia(1) hue-rotate(60deg) saturate(2); }
  8% { filter: grayscale(1) brightness(0.58) contrast(1.25) sepia(1) hue-rotate(59deg) saturate(2.1); }
  15% { filter: grayscale(1) brightness(0.71) contrast(1.15) sepia(1) hue-rotate(61deg) saturate(1.9); }
  23% { filter: grayscale(1) brightness(0.55) contrast(1.28) sepia(1) hue-rotate(58deg) saturate(2.2); }
  31% { filter: grayscale(1) brightness(0.68) contrast(1.18) sepia(1) hue-rotate(62deg) saturate(1.8); }
  38% { filter: grayscale(1) brightness(0.61) contrast(1.22) sepia(1) hue-rotate(60deg) saturate(2.0); }
  46% { filter: grayscale(1) brightness(0.73) contrast(1.16) sepia(1) hue-rotate(61deg) saturate(1.9); }
  54% { filter: grayscale(1) brightness(0.57) contrast(1.26) sepia(1) hue-rotate(59deg) saturate(2.1); }
  62% { filter: grayscale(1) brightness(0.66) contrast(1.19) sepia(1) hue-rotate(60deg) saturate(2.0); }
  69% { filter: grayscale(1) brightness(0.59) contrast(1.24) sepia(1) hue-rotate(58deg) saturate(2.2); }
  77% { filter: grayscale(1) brightness(0.72) contrast(1.17) sepia(1) hue-rotate(62deg) saturate(1.8); }
  85% { filter: grayscale(1) brightness(0.62) contrast(1.21) sepia(1) hue-rotate(60deg) saturate(2.0); }
  92% { filter: grayscale(1) brightness(0.67) contrast(1.18) sepia(1) hue-rotate(61deg) saturate(1.9); }
  100% { filter: grayscale(1) brightness(0.64) contrast(1.2) sepia(1) hue-rotate(60deg) saturate(2); }
}

/* Vertical roll displacement effect */
@keyframes verticalRoll {
  0% { transform: translateY(-100%); }
  100% { transform: translateY(100%); }
}

/* Hologram rolling wave effect */
@keyframes hologramRoll {
  0% { 
    transform: translate(-50%, -50%) scaleX(0.8) scaleY(1);
    filter: grayscale(1) brightness(0.64) contrast(1.2) sepia(1) hue-rotate(60deg) saturate(2);
  }
  25% { 
    transform: translate(-50%, -50%) scaleX(0.8) scaleY(1.02);
    filter: grayscale(1) brightness(0.68) contrast(1.15) sepia(1) hue-rotate(62deg) saturate(2.1);
  }
  50% { 
    transform: translate(-50%, -50%) scaleX(0.8) scaleY(0.98);
    filter: grayscale(1) brightness(0.6) contrast(1.25) sepia(1) hue-rotate(58deg) saturate(1.9);
  }
  75% { 
    transform: translate(-50%, -50%) scaleX(0.8) scaleY(1.01);
    filter: grayscale(1) brightness(0.66) contrast(1.18) sepia(1) hue-rotate(61deg) saturate(2.05);
  }
  100% { 
    transform: translate(-50%, -50%) scaleX(0.8) scaleY(1);
    filter: grayscale(1) brightness(0.64) contrast(1.2) sepia(1) hue-rotate(60deg) saturate(2);
  }
}

/* Hologram glitch effect */
@keyframes hologramGlitch {
  0%, 90%, 100% { 
    transform: translate(-50%, -50%) scaleX(0.8);
    opacity: 1;
  }
  92% { 
    transform: translate(-50.1%, -50%) scaleX(0.8);
    opacity: 0.95;
  }
  94% { 
    transform: translate(-49.9%, -50.05%) scaleX(0.8);
    opacity: 0.98;
  }
  96% { 
    transform: translate(-50.05%, -49.95%) scaleX(0.8);
    opacity: 0.96;
  }
  98% { 
    transform: translate(-49.95%, -50%) scaleX(0.8);
    opacity: 0.97;
  }
}
```

---

## 5. MOBILE CSS OVERRIDES

```css
@media (max-width: 768px) {
  /* Mobile video sizing - much smaller on mobile */
  .bg-video {
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%) scaleX(0.85);
    width: calc(95vw - 1rem);
    height: calc(70vh - 1rem);
    object-fit: contain;
    object-position: center center;
  }
}
```

---

## 6. JAVASCRIPT: showVideo3Background() FUNCTION

```javascript
// Video3 (JA_OBIWAN) functions - with audio that stops when slide changes
function showVideo3Background() {
  console.log('🎬 Showing JA_OBIWAN hologram video with audio...');
  const video = document.getElementById('bg-video3');
  const audio = document.getElementById('obiwan-audio');
  
  if (video) {
    // Show video immediately
    video.style.setProperty('display', 'block', 'important');
    video.muted = true;   // Keep video muted
    video.loop = true;    // Video loops visually
    video.currentTime = 0;
    
    // Set up video event listeners
    const onCanPlay = () => {
      console.log('✅ Video3 ready to play');
      video.removeEventListener('canplay', onCanPlay);
      video.removeEventListener('error', onError);
    };
    
    const onError = (e) => {
      console.log('❌ Video3 failed to load:', e);
      video.removeEventListener('canplay', onCanPlay);
      video.removeEventListener('error', onError);
    };
    
    video.addEventListener('canplay', onCanPlay);
    video.addEventListener('error', onError);
    
    video.play().catch(err => {
      console.log('Video3 play failed:', err.message);
    });
  }
  
  if (audio) {
    audio.volume = 0.7;   // Set audio volume
    audio.muted = false;  // Ensure not muted
    audio.currentTime = 0;
    
    // Try to play with better error handling
    console.log('🔊 Attempting to play audio...');
    audio.play().then(() => {
      console.log('✅ Audio playing successfully');
    }).catch(err => {
      console.log('❌ Audio play failed:', err.message);
      console.log('🔧 This might require user interaction first');
    });
  }
}
```

---

## 7. JAVASCRIPT: hideVideo3Background() FUNCTION

```javascript
function hideVideo3Background() {
  console.log('🛑 Hiding JA_OBIWAN video and stopping audio...');
  const video = document.getElementById('bg-video3');
  const audio = document.getElementById('obiwan-audio');
  
  if (video) {
    video.pause();
    video.style.setProperty('display', 'none', 'important');
  }
  
  if (audio) {
    audio.pause();
    audio.currentTime = 0; // Reset to beginning
  }
}
```

---

## 8. JAVASCRIPT: SLIDE 3 DETECTION AND VIDEO TRIGGER

```javascript
// In the startPage() function, around line 2798-2805:

// Show video3 on 6BDM slide (only the main 6BDM slide with timeline content)
if (pageContent.includes('6BDM: JULIAN ASSANGE AND THE PRICE OF TRUTH')) {
  console.log('🎬 6BDM slide - Showing video3...');
  showVideo3Background();
} else {
  console.log(`🎬 Not 6BDM slide, hiding video3...`);
  hideVideo3Background();
}
```

---

## 9. VIDEO HANDLING DETAILS SUMMARY

### Video Element Properties:
- **ID**: `bg-video3`
- **Class**: `bg-video`
- **Source**: `HOLOGRAMJ.mp4`
- **Initial State**: `display: none` (hidden by default)
- **Attributes**:
  - `autoplay`: Enabled
  - `muted`: Enabled (video is muted, separate audio track plays)
  - `playsinline`: Enabled (for mobile)
  - `preload="metadata"`: Only loads metadata initially
  - `loop`: Set to true in JavaScript
  - `volume="0"`: Video volume is 0
  - `defaultMuted`: Enabled

### Audio Element Properties:
- **ID**: `obiwan-audio`
- **Source**: `OBIWAN_REAL.mp4`
- **Volume**: 0.7 (set in JavaScript)
- **Initial State**: Hidden

### Video Positioning & Sizing:
- **Desktop**:
  - Position: `fixed`, centered at `top: 50%`, `left: 60%`
  - Transform: `translate(-50%, -50%) scaleX(0.8)`
  - Size: `calc(50vw - 2rem)` width, `calc(60vh - 2rem)` height
  - `object-fit: cover`

- **Mobile**:
  - Position: Centered (`left: 50%`)
  - Transform: `translate(-50%, -50%) scaleX(0.85)`
  - Size: `calc(95vw - 1rem)` width, `calc(70vh - 1rem)` height
  - `object-fit: contain`

### Visual Effects:
- **Filter**: Grayscale, brightness, contrast, sepia, hue-rotate, saturation
- **Animations**: 
  - `videoFlicker`: 0.06s infinite flicker effect
  - `hologramRoll`: 3s linear infinite rolling wave
  - `hologramGlitch`: 0.8s infinite glitch effect
- **Overlay**: Green hologram gradient overlay via `::before` pseudo-element

### Video Control Flow:
1. Slide content is checked for "6BDM: JULIAN ASSANGE AND THE PRICE OF TRUTH"
2. If found, `showVideo3Background()` is called
3. Video element is shown (`display: block` with `!important`)
4. Video is reset to beginning (`currentTime = 0`)
5. Video starts playing (muted)
6. Separate audio track (`obiwan-audio`) plays at volume 0.7
7. When leaving slide, `hideVideo3Background()` is called
8. Both video and audio are paused and reset

---

## END OF EXTRACT


