.class public Lorg/slim/preference/colorpicker/ColorPickerView;
.super Landroid/view/View;
.source "ColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/slim/preference/colorpicker/ColorPickerView$OnColorChangedListener;
    }
.end annotation


# static fields
.field private static final BORDER_WIDTH_PX:F = 1.0f

.field private static final PANEL_ALPHA:I = 0x2

.field private static final PANEL_HUE:I = 0x1

.field private static final PANEL_SAT_VAL:I


# instance fields
.field private ALPHA_PANEL_HEIGHT:F

.field private HUE_PANEL_WIDTH:F

.field private PALETTE_CIRCLE_TRACKER_RADIUS:F

.field private PANEL_SPACING:F

.field private RECTANGLE_TRACKER_OFFSET:F

.field private mAlpha:I

.field private mAlphaPaint:Landroid/graphics/Paint;

.field private mAlphaPattern:Lorg/slim/preference/colorpicker/AlphaPatternDrawable;

.field private mAlphaRect:Landroid/graphics/RectF;

.field private mAlphaShader:Landroid/graphics/Shader;

.field private mAlphaSliderText:Ljava/lang/String;

.field private mAlphaTextPaint:Landroid/graphics/Paint;

.field private mBorderColor:I

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mDensity:F

.field private mDrawingOffset:F

.field private mDrawingRect:Landroid/graphics/RectF;

.field private mHue:F

.field private mHuePaint:Landroid/graphics/Paint;

.field private mHueRect:Landroid/graphics/RectF;

.field private mHueShader:Landroid/graphics/Shader;

.field private mHueTrackerPaint:Landroid/graphics/Paint;

.field private mLastTouchedPanel:I

.field private mListener:Lorg/slim/preference/colorpicker/ColorPickerView$OnColorChangedListener;

.field private mSat:F

.field private mSatShader:Landroid/graphics/Shader;

.field private mSatValPaint:Landroid/graphics/Paint;

.field private mSatValRect:Landroid/graphics/RectF;

.field private mSatValTrackerPaint:Landroid/graphics/Paint;

.field private mShowAlphaPanel:Z

.field private mSliderTrackerColor:I

.field private mStartTouchPoint:Landroid/graphics/Point;

.field private mVal:F

.field private mValShader:Landroid/graphics/Shader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/slim/preference/colorpicker/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/slim/preference/colorpicker/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 151
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    .line 63
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    .line 68
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->PANEL_SPACING:F

    .line 72
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    .line 77
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    .line 80
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mDensity:F

    .line 100
    const/16 v0, 0xff

    iput v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlpha:I

    .line 101
    const/high16 v0, 0x43b40000    # 360.0f

    iput v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mHue:F

    .line 102
    iput v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mSat:F

    .line 103
    iput v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mVal:F

    .line 105
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    .line 106
    const v0, -0xe3e3e4

    iput v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mSliderTrackerColor:I

    .line 107
    const v0, -0x919192

    iput v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mBorderColor:I

    .line 108
    iput-boolean v2, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    .line 114
    iput v2, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mLastTouchedPanel:I

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    .line 152
    invoke-direct {p0}, Lorg/slim/preference/colorpicker/ColorPickerView;->init()V

    .line 150
    return-void
.end method

.method private alphaToPoint(I)Landroid/graphics/Point;
    .locals 5
    .param p1, "alpha"    # I

    .prologue
    .line 386
    iget-object v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    .line 387
    .local v1, "rect":Landroid/graphics/RectF;
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 389
    .local v2, "width":F
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 391
    .local v0, "p":Landroid/graphics/Point;
    int-to-float v3, p1

    mul-float/2addr v3, v2

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    sub-float v3, v2, v3

    iget v4, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 392
    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->y:I

    .line 394
    return-object v0
.end method

.method private buildHueColorArray()[I
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 211
    const/16 v3, 0x169

    new-array v1, v3, [I

    .line 213
    .local v1, "hue":[I
    const/4 v0, 0x0

    .line 214
    .local v0, "count":I
    array-length v3, v1

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 215
    const/4 v3, 0x3

    new-array v3, v3, [F

    int-to-float v4, v2

    aput v4, v3, v6

    const/4 v4, 0x1

    aput v5, v3, v4

    const/4 v4, 0x2

    aput v5, v3, v4

    invoke-static {v3}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    aput v3, v1, v0

    .line 214
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    :cond_0
    return-object v1
.end method

.method private calculateRequiredOffset()F
    .locals 3

    .prologue
    .line 203
    iget v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    iget v2, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 204
    .local v0, "offset":F
    iget v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mDensity:F

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 206
    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v0

    return v1
.end method

.method private chooseHeight(II)I
    .locals 1
    .param p1, "mode"    # I
    .param p2, "size"    # I

    .prologue
    .line 713
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p1, v0, :cond_1

    .line 714
    :cond_0
    return p2

    .line 716
    :cond_1
    invoke-direct {p0}, Lorg/slim/preference/colorpicker/ColorPickerView;->getPrefferedHeight()I

    move-result v0

    return v0
.end method

.method private chooseWidth(II)I
    .locals 1
    .param p1, "mode"    # I
    .param p2, "size"    # I

    .prologue
    .line 705
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p1, v0, :cond_1

    .line 706
    :cond_0
    return p2

    .line 708
    :cond_1
    invoke-direct {p0}, Lorg/slim/preference/colorpicker/ColorPickerView;->getPrefferedWidth()I

    move-result v0

    return v0
.end method

.method private drawAlphaPanel(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 309
    iget-boolean v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlphaPattern:Lorg/slim/preference/colorpicker/AlphaPatternDrawable;

    if-eqz v0, :cond_0

    .line 311
    iget-object v11, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    .line 314
    .local v11, "rect":Landroid/graphics/RectF;
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 315
    iget v0, v11, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, v0, v1

    .line 316
    iget v0, v11, Landroid/graphics/RectF;->top:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v0, v2

    .line 317
    iget v0, v11, Landroid/graphics/RectF;->right:F

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v0

    .line 318
    iget v0, v11, Landroid/graphics/RectF;->bottom:F

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v4, v0

    .line 319
    iget-object v5, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 315
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 323
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlphaPattern:Lorg/slim/preference/colorpicker/AlphaPatternDrawable;

    invoke-virtual {v0, p1}, Lorg/slim/preference/colorpicker/AlphaPatternDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 325
    const/4 v0, 0x3

    new-array v8, v0, [F

    iget v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mHue:F

    const/4 v1, 0x0

    aput v0, v8, v1

    iget v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mSat:F

    const/4 v1, 0x1

    aput v0, v8, v1

    iget v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mVal:F

    const/4 v1, 0x2

    aput v0, v8, v1

    .line 326
    .local v8, "hsv":[F
    invoke-static {v8}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    .line 327
    .local v5, "color":I
    const/4 v0, 0x0

    invoke-static {v0, v8}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v6

    .line 329
    .local v6, "acolor":I
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v11, Landroid/graphics/RectF;->left:F

    iget v2, v11, Landroid/graphics/RectF;->top:F

    iget v3, v11, Landroid/graphics/RectF;->right:F

    iget v4, v11, Landroid/graphics/RectF;->top:F

    .line 330
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 329
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlphaShader:Landroid/graphics/Shader;

    .line 333
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlphaPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlphaShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 335
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v11, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 337
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    const-string/jumbo v1, ""

    if-eq v0, v1, :cond_2

    .line 338
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    .line 339
    invoke-virtual {v11}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v3, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mDensity:F

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    .line 338
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 342
    :cond_2
    iget v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mDensity:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v12, v0, v1

    .line 344
    .local v12, "rectWidth":F
    iget v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlpha:I

    invoke-direct {p0, v0}, Lorg/slim/preference/colorpicker/ColorPickerView;->alphaToPoint(I)Landroid/graphics/Point;

    move-result-object v9

    .line 346
    .local v9, "p":Landroid/graphics/Point;
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    .line 347
    .local v10, "r":Landroid/graphics/RectF;
    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    sub-float/2addr v0, v12

    iput v0, v10, Landroid/graphics/RectF;->left:F

    .line 348
    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    add-float/2addr v0, v12

    iput v0, v10, Landroid/graphics/RectF;->right:F

    .line 349
    iget v0, v11, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    sub-float/2addr v0, v1

    iput v0, v10, Landroid/graphics/RectF;->top:F

    .line 350
    iget v0, v11, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    add-float/2addr v0, v1

    iput v0, v10, Landroid/graphics/RectF;->bottom:F

    .line 352
    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v1, 0x40000000    # 2.0f

    iget-object v2, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 307
    return-void
.end method

.method private drawHuePanel(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 272
    iget-object v10, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    .line 275
    .local v10, "rect":Landroid/graphics/RectF;
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 276
    iget v0, v10, Landroid/graphics/RectF;->left:F

    sub-float v1, v0, v4

    .line 277
    iget v0, v10, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v4

    .line 278
    iget v0, v10, Landroid/graphics/RectF;->right:F

    add-float v3, v0, v4

    .line 279
    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v0

    .line 280
    iget-object v5, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 276
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 283
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    if-nez v0, :cond_0

    .line 284
    new-instance v0, Landroid/graphics/LinearGradient;

    .line 285
    iget v1, v10, Landroid/graphics/RectF;->left:F

    iget v2, v10, Landroid/graphics/RectF;->top:F

    iget v3, v10, Landroid/graphics/RectF;->left:F

    iget v4, v10, Landroid/graphics/RectF;->bottom:F

    .line 286
    invoke-direct {p0}, Lorg/slim/preference/colorpicker/ColorPickerView;->buildHueColorArray()[I

    move-result-object v5

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 284
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    .line 287
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 290
    :cond_0
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 292
    iget v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mDensity:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    div-float v11, v0, v12

    .line 294
    .local v11, "rectHeight":F
    iget v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mHue:F

    invoke-direct {p0, v0}, Lorg/slim/preference/colorpicker/ColorPickerView;->hueToPoint(F)Landroid/graphics/Point;

    move-result-object v8

    .line 296
    .local v8, "p":Landroid/graphics/Point;
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    .line 297
    .local v9, "r":Landroid/graphics/RectF;
    iget v0, v10, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    sub-float/2addr v0, v1

    iput v0, v9, Landroid/graphics/RectF;->left:F

    .line 298
    iget v0, v10, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    add-float/2addr v0, v1

    iput v0, v9, Landroid/graphics/RectF;->right:F

    .line 299
    iget v0, v8, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    sub-float/2addr v0, v11

    iput v0, v9, Landroid/graphics/RectF;->top:F

    .line 300
    iget v0, v8, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    add-float/2addr v0, v11

    iput v0, v9, Landroid/graphics/RectF;->bottom:F

    .line 303
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v12, v12, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 270
    return-void
.end method

.method private drawSatValPanel(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 235
    iget-object v10, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    .line 238
    .local v10, "rect":Landroid/graphics/RectF;
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 239
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 240
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v0, v10, Landroid/graphics/RectF;->right:F

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v0

    .line 241
    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v4, v0

    iget-object v5, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 239
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 244
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v10, Landroid/graphics/RectF;->left:F

    iget v2, v10, Landroid/graphics/RectF;->top:F

    iget v3, v10, Landroid/graphics/RectF;->left:F

    iget v4, v10, Landroid/graphics/RectF;->bottom:F

    .line 246
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, -0x1

    const/high16 v6, -0x1000000

    .line 245
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    .line 249
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [F

    iget v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mHue:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    aput v1, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    aput v1, v0, v2

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    .line 251
    .local v6, "rgb":I
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v10, Landroid/graphics/RectF;->left:F

    iget v2, v10, Landroid/graphics/RectF;->top:F

    iget v3, v10, Landroid/graphics/RectF;->right:F

    iget v4, v10, Landroid/graphics/RectF;->top:F

    .line 252
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, -0x1

    .line 251
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mSatShader:Landroid/graphics/Shader;

    .line 253
    new-instance v8, Landroid/graphics/ComposeShader;

    .line 254
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    iget-object v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mSatShader:Landroid/graphics/Shader;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 253
    invoke-direct {v8, v0, v1, v2}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    .line 255
    .local v8, "mShader":Landroid/graphics/ComposeShader;
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mSatValPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 257
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mSatValPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 259
    iget v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mSat:F

    iget v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mVal:F

    invoke-direct {p0, v0, v1}, Lorg/slim/preference/colorpicker/ColorPickerView;->satValToPoint(FF)Landroid/graphics/Point;

    move-result-object v9

    .line 261
    .local v9, "p":Landroid/graphics/Point;
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 263
    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, v9, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    iget v3, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mDensity:F

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    .line 262
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 265
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    const v1, -0x222223

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 266
    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, v9, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    iget-object v3, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 233
    return-void
.end method

.method private getPrefferedHeight()I
    .locals 4

    .prologue
    .line 735
    iget v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mDensity:F

    const/high16 v2, 0x43480000    # 200.0f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 737
    .local v0, "height":I
    iget-boolean v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v1, :cond_0

    .line 738
    int-to-float v1, v0

    iget v2, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->PANEL_SPACING:F

    iget v3, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 741
    :cond_0
    return v0
.end method

.method private getPrefferedWidth()I
    .locals 4

    .prologue
    .line 722
    invoke-direct {p0}, Lorg/slim/preference/colorpicker/ColorPickerView;->getPrefferedHeight()I

    move-result v0

    .line 724
    .local v0, "width":I
    iget-boolean v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v1, :cond_0

    .line 725
    int-to-float v1, v0

    iget v2, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->PANEL_SPACING:F

    iget v3, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .line 729
    :cond_0
    int-to-float v1, v0

    iget v2, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    add-float/2addr v1, v2

    iget v2, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->PANEL_SPACING:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private hueToPoint(F)Landroid/graphics/Point;
    .locals 5
    .param p1, "hue"    # F

    .prologue
    .line 359
    iget-object v2, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    .line 360
    .local v2, "rect":Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 362
    .local v0, "height":F
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 364
    .local v1, "p":Landroid/graphics/Point;
    mul-float v3, p1, v0

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v3, v4

    sub-float v3, v0, v3

    iget v4, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->y:I

    .line 365
    iget v3, v2, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 367
    return-object v1
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lorg/slim/preference/colorpicker/ColorPickerView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 157
    invoke-virtual {p0}, Lorg/slim/preference/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mDensity:F

    .line 158
    iget v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    iget v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    .line 159
    iget v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    iget v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    .line 160
    iget v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    iget v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    .line 161
    iget v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    iget v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    .line 162
    iget v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->PANEL_SPACING:F

    iget v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->PANEL_SPACING:F

    .line 164
    invoke-direct {p0}, Lorg/slim/preference/colorpicker/ColorPickerView;->calculateRequiredOffset()F

    move-result v0

    iput v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mDrawingOffset:F

    .line 166
    invoke-direct {p0}, Lorg/slim/preference/colorpicker/ColorPickerView;->initPaintTools()V

    .line 169
    invoke-virtual {p0, v2}, Lorg/slim/preference/colorpicker/ColorPickerView;->setFocusable(Z)V

    .line 170
    invoke-virtual {p0, v2}, Lorg/slim/preference/colorpicker/ColorPickerView;->setFocusableInTouchMode(Z)V

    .line 155
    return-void
.end method

.method private initPaintTools()V
    .locals 4

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x1

    .line 175
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mSatValPaint:Landroid/graphics/Paint;

    .line 176
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    .line 177
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    .line 178
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    .line 179
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlphaPaint:Landroid/graphics/Paint;

    .line 180
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    .line 181
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    .line 184
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 185
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 186
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 188
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mSliderTrackerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 190
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 191
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 193
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    const v1, -0xe3e3e4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mDensity:F

    const/high16 v2, 0x41600000    # 14.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 195
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 196
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 197
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 173
    return-void
.end method

.method private moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 620
    iget-object v4, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    if-nez v4, :cond_0

    return v7

    .line 622
    :cond_0
    const/4 v3, 0x0

    .line 624
    .local v3, "update":Z
    iget-object v4, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    iget v1, v4, Landroid/graphics/Point;->x:I

    .line 625
    .local v1, "startX":I
    iget-object v4, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    iget v2, v4, Landroid/graphics/Point;->y:I

    .line 628
    .local v2, "startY":I
    iget-object v4, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    int-to-float v5, v1

    int-to-float v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 629
    iput v8, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mLastTouchedPanel:I

    .line 631
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v4}, Lorg/slim/preference/colorpicker/ColorPickerView;->pointToHue(F)F

    move-result v4

    iput v4, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mHue:F

    .line 633
    const/4 v3, 0x1

    .line 656
    :cond_1
    :goto_0
    return v3

    .line 635
    :cond_2
    iget-object v4, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    int-to-float v5, v1

    int-to-float v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 637
    iput v7, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mLastTouchedPanel:I

    .line 639
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v4, v5}, Lorg/slim/preference/colorpicker/ColorPickerView;->pointToSatVal(FF)[F

    move-result-object v0

    .line 641
    .local v0, "result":[F
    aget v4, v0, v7

    iput v4, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mSat:F

    .line 642
    aget v4, v0, v8

    iput v4, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mVal:F

    .line 644
    const/4 v3, 0x1

    goto :goto_0

    .line 646
    .end local v0    # "result":[F
    :cond_3
    iget-object v4, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    int-to-float v5, v1

    int-to-float v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 648
    const/4 v4, 0x2

    iput v4, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mLastTouchedPanel:I

    .line 650
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v4}, Lorg/slim/preference/colorpicker/ColorPickerView;->pointToAlpha(I)I

    move-result v4

    iput v4, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlpha:I

    .line 652
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private pointToAlpha(I)I
    .locals 4
    .param p1, "x"    # I

    .prologue
    .line 454
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    .line 455
    .local v0, "rect":Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v1, v2

    .line 457
    .local v1, "width":I
    int-to-float v2, p1

    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 458
    const/4 p1, 0x0

    .line 467
    :goto_0
    mul-int/lit16 v2, p1, 0xff

    div-int/2addr v2, v1

    rsub-int v2, v2, 0xff

    return v2

    .line 460
    :cond_0
    int-to-float v2, p1

    iget v3, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 461
    move p1, v1

    goto :goto_0

    .line 464
    :cond_1
    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    sub-int/2addr p1, v2

    goto :goto_0
.end method

.method private pointToHue(F)F
    .locals 4
    .param p1, "y"    # F

    .prologue
    const/high16 v3, 0x43b40000    # 360.0f

    .line 435
    iget-object v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    .line 437
    .local v1, "rect":Landroid/graphics/RectF;
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 439
    .local v0, "height":F
    iget v2, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    .line 440
    const/4 p1, 0x0

    .line 449
    :goto_0
    mul-float v2, p1, v3

    div-float/2addr v2, v0

    sub-float v2, v3, v2

    return v2

    .line 442
    :cond_0
    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    .line 443
    move p1, v0

    goto :goto_0

    .line 446
    :cond_1
    iget v2, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v2

    goto :goto_0
.end method

.method private pointToSatVal(FF)[F
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 400
    iget-object v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    .line 401
    .local v1, "rect":Landroid/graphics/RectF;
    const/4 v4, 0x2

    new-array v2, v4, [F

    .line 403
    .local v2, "result":[F
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 404
    .local v3, "width":F
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 406
    .local v0, "height":F
    iget v4, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    .line 407
    const/4 p1, 0x0

    .line 416
    :goto_0
    iget v4, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v4, p2, v4

    if-gez v4, :cond_2

    .line 417
    const/4 p2, 0x0

    .line 427
    :goto_1
    div-float v4, v6, v3

    mul-float/2addr v4, p1

    const/4 v5, 0x0

    aput v4, v2, v5

    .line 428
    div-float v4, v6, v0

    mul-float/2addr v4, p2

    sub-float v4, v6, v4

    const/4 v5, 0x1

    aput v4, v2, v5

    .line 430
    return-object v2

    .line 409
    :cond_0
    iget v4, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v4, p1, v4

    if-lez v4, :cond_1

    .line 410
    move p1, v3

    goto :goto_0

    .line 413
    :cond_1
    iget v4, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v4

    goto :goto_0

    .line 419
    :cond_2
    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, p2, v4

    if-lez v4, :cond_3

    .line 420
    move p2, v0

    goto :goto_1

    .line 423
    :cond_3
    iget v4, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, v4

    goto :goto_1
.end method

.method private satValToPoint(FF)Landroid/graphics/Point;
    .locals 6
    .param p1, "sat"    # F
    .param p2, "val"    # F

    .prologue
    .line 372
    iget-object v2, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    .line 373
    .local v2, "rect":Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 374
    .local v0, "height":F
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 376
    .local v3, "width":F
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 378
    .local v1, "p":Landroid/graphics/Point;
    mul-float v4, p1, v3

    iget v5, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/graphics/Point;->x:I

    .line 379
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, p2

    mul-float/2addr v4, v0

    iget v5, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/graphics/Point;->y:I

    .line 381
    return-object v1
.end method

.method private setUpAlphaRect()V
    .locals 10

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 792
    iget-boolean v5, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-nez v5, :cond_0

    return-void

    .line 794
    :cond_0
    iget-object v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    .line 796
    .local v1, "dRect":Landroid/graphics/RectF;
    iget v5, v1, Landroid/graphics/RectF;->left:F

    add-float v2, v5, v7

    .line 797
    .local v2, "left":F
    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    iget v6, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    sub-float/2addr v5, v6

    add-float v4, v5, v7

    .line 798
    .local v4, "top":F
    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v0, v5, v7

    .line 799
    .local v0, "bottom":F
    iget v5, v1, Landroid/graphics/RectF;->right:F

    sub-float v3, v5, v7

    .line 801
    .local v3, "right":F
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v2, v4, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    .line 803
    new-instance v5, Lorg/slim/preference/colorpicker/AlphaPatternDrawable;

    iget v6, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mDensity:F

    const/high16 v7, 0x40a00000    # 5.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v5, v6}, Lorg/slim/preference/colorpicker/AlphaPatternDrawable;-><init>(I)V

    iput-object v5, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlphaPattern:Lorg/slim/preference/colorpicker/AlphaPatternDrawable;

    .line 804
    iget-object v5, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlphaPattern:Lorg/slim/preference/colorpicker/AlphaPatternDrawable;

    .line 805
    iget-object v6, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 806
    iget-object v7, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 807
    iget-object v8, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 808
    iget-object v9, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 804
    invoke-virtual {v5, v6, v7, v8, v9}, Lorg/slim/preference/colorpicker/AlphaPatternDrawable;->setBounds(IIII)V

    .line 790
    return-void
.end method

.method private setUpHueRect()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 779
    iget-object v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    .line 781
    .local v1, "dRect":Landroid/graphics/RectF;
    iget v5, v1, Landroid/graphics/RectF;->right:F

    iget v6, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    sub-float/2addr v5, v6

    add-float v2, v5, v8

    .line 782
    .local v2, "left":F
    iget v5, v1, Landroid/graphics/RectF;->top:F

    add-float v4, v5, v8

    .line 783
    .local v4, "top":F
    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v6, v5, v8

    iget-boolean v5, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v5, :cond_0

    .line 784
    iget v5, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->PANEL_SPACING:F

    iget v7, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v5, v7

    .line 783
    :goto_0
    sub-float v0, v6, v5

    .line 785
    .local v0, "bottom":F
    iget v5, v1, Landroid/graphics/RectF;->right:F

    sub-float v3, v5, v8

    .line 787
    .local v3, "right":F
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v2, v4, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    .line 778
    return-void

    .line 784
    .end local v0    # "bottom":F
    .end local v3    # "right":F
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private setUpSatValRect()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 763
    iget-object v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    .line 764
    .local v1, "dRect":Landroid/graphics/RectF;
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    sub-float v3, v6, v7

    .line 766
    .local v3, "panelSide":F
    iget-boolean v6, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v6, :cond_0

    .line 767
    iget v6, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->PANEL_SPACING:F

    iget v7, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v6, v7

    sub-float/2addr v3, v6

    .line 770
    :cond_0
    iget v6, v1, Landroid/graphics/RectF;->left:F

    add-float v2, v6, v8

    .line 771
    .local v2, "left":F
    iget v6, v1, Landroid/graphics/RectF;->top:F

    add-float v5, v6, v8

    .line 772
    .local v5, "top":F
    add-float v0, v5, v3

    .line 773
    .local v0, "bottom":F
    add-float v4, v2, v3

    .line 775
    .local v4, "right":F
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v2, v5, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v6, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    .line 761
    return-void
.end method


# virtual methods
.method public getAlphaSliderText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    return-object v0
.end method

.method public getBorderColor()I
    .locals 1

    .prologue
    .line 836
    iget v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mBorderColor:I

    return v0
.end method

.method public getColor()I
    .locals 4

    .prologue
    .line 844
    iget v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlpha:I

    const/4 v1, 0x3

    new-array v1, v1, [F

    iget v2, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mHue:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mSat:F

    const/4 v3, 0x1

    aput v2, v1, v3

    iget v2, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mVal:F

    const/4 v3, 0x2

    aput v2, v1, v3

    invoke-static {v0, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    return v0
.end method

.method public getDrawingOffset()F
    .locals 1

    .prologue
    .line 893
    iget v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mDrawingOffset:F

    return v0
.end method

.method public getSliderTrackerColor()I
    .locals 1

    .prologue
    .line 930
    iget v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mSliderTrackerColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 225
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    return-void

    .line 227
    :cond_1
    invoke-direct {p0, p1}, Lorg/slim/preference/colorpicker/ColorPickerView;->drawSatValPanel(Landroid/graphics/Canvas;)V

    .line 228
    invoke-direct {p0, p1}, Lorg/slim/preference/colorpicker/ColorPickerView;->drawHuePanel(Landroid/graphics/Canvas;)V

    .line 229
    invoke-direct {p0, p1}, Lorg/slim/preference/colorpicker/ColorPickerView;->drawAlphaPanel(Landroid/graphics/Canvas;)V

    .line 223
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 662
    const/4 v3, 0x0

    .line 663
    .local v3, "width":I
    const/4 v0, 0x0

    .line 665
    .local v0, "height":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 666
    .local v5, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 668
    .local v2, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 669
    .local v4, "widthAllowed":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 671
    .local v1, "heightAllowed":I
    invoke-direct {p0, v5, v4}, Lorg/slim/preference/colorpicker/ColorPickerView;->chooseWidth(II)I

    move-result v4

    .line 672
    invoke-direct {p0, v2, v1}, Lorg/slim/preference/colorpicker/ColorPickerView;->chooseHeight(II)I

    move-result v1

    .line 674
    iget-boolean v6, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-nez v6, :cond_1

    .line 676
    int-to-float v6, v4

    iget v7, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->PANEL_SPACING:F

    sub-float/2addr v6, v7

    iget v7, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    sub-float/2addr v6, v7

    float-to-int v0, v6

    .line 679
    if-le v0, v1, :cond_0

    .line 680
    move v0, v1

    .line 681
    int-to-float v6, v0

    iget v7, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->PANEL_SPACING:F

    add-float/2addr v6, v7

    iget v7, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    add-float/2addr v6, v7

    float-to-int v3, v6

    .line 701
    :goto_0
    invoke-virtual {p0, v3, v0}, Lorg/slim/preference/colorpicker/ColorPickerView;->setMeasuredDimension(II)V

    .line 660
    return-void

    .line 684
    :cond_0
    move v3, v4

    goto :goto_0

    .line 689
    :cond_1
    int-to-float v6, v1

    iget v7, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    sub-float/2addr v6, v7

    iget v7, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    add-float/2addr v6, v7

    float-to-int v3, v6

    .line 691
    if-le v3, v4, :cond_2

    .line 692
    move v3, v4

    .line 693
    int-to-float v6, v4

    iget v7, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    sub-float/2addr v6, v7

    iget v7, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v6, v7

    float-to-int v0, v6

    goto :goto_0

    .line 696
    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 748
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 750
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    .line 751
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mDrawingOffset:F

    invoke-virtual {p0}, Lorg/slim/preference/colorpicker/ColorPickerView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 752
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    int-to-float v1, p1

    iget v2, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mDrawingOffset:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lorg/slim/preference/colorpicker/ColorPickerView;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 753
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mDrawingOffset:F

    invoke-virtual {p0}, Lorg/slim/preference/colorpicker/ColorPickerView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 754
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    int-to-float v1, p2

    iget v2, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mDrawingOffset:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lorg/slim/preference/colorpicker/ColorPickerView;->getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 756
    invoke-direct {p0}, Lorg/slim/preference/colorpicker/ColorPickerView;->setUpSatValRect()V

    .line 757
    invoke-direct {p0}, Lorg/slim/preference/colorpicker/ColorPickerView;->setUpHueRect()V

    .line 758
    invoke-direct {p0}, Lorg/slim/preference/colorpicker/ColorPickerView;->setUpAlphaRect()V

    .line 747
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 576
    const/4 v0, 0x0

    .line 578
    .local v0, "update":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 604
    .end local v0    # "update":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 606
    iget-object v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mListener:Lorg/slim/preference/colorpicker/ColorPickerView$OnColorChangedListener;

    if-eqz v1, :cond_0

    .line 607
    iget-object v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mListener:Lorg/slim/preference/colorpicker/ColorPickerView$OnColorChangedListener;

    iget v2, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlpha:I

    const/4 v3, 0x3

    new-array v3, v3, [F

    iget v4, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mHue:F

    const/4 v5, 0x0

    aput v4, v3, v5

    iget v4, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mSat:F

    aput v4, v3, v6

    iget v4, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mVal:F

    const/4 v5, 0x2

    aput v4, v3, v5

    invoke-static {v2, v3}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v2

    invoke-interface {v1, v2}, Lorg/slim/preference/colorpicker/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 610
    :cond_0
    invoke-virtual {p0}, Lorg/slim/preference/colorpicker/ColorPickerView;->invalidate()V

    .line 611
    return v6

    .line 582
    .restart local v0    # "update":Z
    :pswitch_0
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    .line 584
    invoke-direct {p0, p1}, Lorg/slim/preference/colorpicker/ColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    .local v0, "update":Z
    goto :goto_0

    .line 590
    .local v0, "update":Z
    :pswitch_1
    invoke-direct {p0, p1}, Lorg/slim/preference/colorpicker/ColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    .local v0, "update":Z
    goto :goto_0

    .line 596
    .local v0, "update":Z
    :pswitch_2
    iput-object v2, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    .line 598
    invoke-direct {p0, p1}, Lorg/slim/preference/colorpicker/ColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    .local v0, "update":Z
    goto :goto_0

    .line 615
    .end local v0    # "update":Z
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 578
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x0

    const/high16 v12, 0x42480000    # 50.0f

    const/high16 v11, 0x41200000    # 10.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    .line 475
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 476
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 478
    .local v6, "y":F
    const/4 v3, 0x0

    .line 481
    .local v3, "update":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 483
    iget v7, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mLastTouchedPanel:I

    packed-switch v7, :pswitch_data_0

    .line 559
    :cond_0
    :goto_0
    if-eqz v3, :cond_c

    .line 561
    iget-object v7, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mListener:Lorg/slim/preference/colorpicker/ColorPickerView$OnColorChangedListener;

    if-eqz v7, :cond_1

    .line 562
    iget-object v7, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mListener:Lorg/slim/preference/colorpicker/ColorPickerView$OnColorChangedListener;

    iget v8, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlpha:I

    const/4 v9, 0x3

    new-array v9, v9, [F

    iget v10, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mHue:F

    aput v10, v9, v13

    iget v10, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mSat:F

    const/4 v11, 0x1

    aput v10, v9, v11

    iget v10, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mVal:F

    const/4 v11, 0x2

    aput v10, v9, v11

    invoke-static {v8, v9}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v8

    invoke-interface {v7, v8}, Lorg/slim/preference/colorpicker/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 565
    :cond_1
    invoke-virtual {p0}, Lorg/slim/preference/colorpicker/ColorPickerView;->invalidate()V

    .line 566
    const/4 v7, 0x1

    return v7

    .line 489
    :pswitch_0
    iget v7, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mSat:F

    div-float v8, v5, v12

    add-float v2, v7, v8

    .line 490
    .local v2, "sat":F
    iget v7, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mVal:F

    div-float v8, v6, v12

    sub-float v4, v7, v8

    .line 492
    .local v4, "val":F
    cmpg-float v7, v2, v9

    if-gez v7, :cond_4

    .line 493
    const/4 v2, 0x0

    .line 499
    :cond_2
    :goto_1
    cmpg-float v7, v4, v9

    if-gez v7, :cond_5

    .line 500
    const/4 v4, 0x0

    .line 506
    :cond_3
    :goto_2
    iput v2, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mSat:F

    .line 507
    iput v4, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mVal:F

    .line 509
    const/4 v3, 0x1

    .line 511
    goto :goto_0

    .line 495
    :cond_4
    cmpl-float v7, v2, v10

    if-lez v7, :cond_2

    .line 496
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    .line 502
    :cond_5
    cmpl-float v7, v4, v10

    if-lez v7, :cond_3

    .line 503
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_2

    .line 515
    .end local v2    # "sat":F
    .end local v4    # "val":F
    :pswitch_1
    iget v7, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mHue:F

    mul-float v8, v6, v11

    sub-float v1, v7, v8

    .line 517
    .local v1, "hue":F
    cmpg-float v7, v1, v9

    if-gez v7, :cond_7

    .line 518
    const/4 v1, 0x0

    .line 524
    :cond_6
    :goto_3
    iput v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mHue:F

    .line 526
    const/4 v3, 0x1

    .line 528
    goto :goto_0

    .line 520
    :cond_7
    const/high16 v7, 0x43b40000    # 360.0f

    cmpl-float v7, v1, v7

    if-lez v7, :cond_6

    .line 521
    const/high16 v1, 0x43b40000    # 360.0f

    goto :goto_3

    .line 532
    .end local v1    # "hue":F
    :pswitch_2
    iget-boolean v7, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v7, :cond_8

    iget-object v7, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    if-nez v7, :cond_9

    .line 533
    :cond_8
    const/4 v3, 0x0

    .line 532
    goto :goto_0

    .line 537
    :cond_9
    iget v7, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlpha:I

    int-to-float v7, v7

    mul-float v8, v5, v11

    sub-float/2addr v7, v8

    float-to-int v0, v7

    .line 539
    .local v0, "alpha":I
    if-gez v0, :cond_b

    .line 540
    const/4 v0, 0x0

    .line 546
    :cond_a
    :goto_4
    iput v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlpha:I

    .line 549
    const/4 v3, 0x1

    goto :goto_0

    .line 542
    :cond_b
    const/16 v7, 0xff

    if-le v0, v7, :cond_a

    .line 543
    const/16 v0, 0xff

    goto :goto_4

    .line 570
    .end local v0    # "alpha":I
    :cond_c
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    return v7

    .line 483
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAlphaSliderText(I)V
    .locals 2
    .param p1, "res"    # I

    .prologue
    .line 939
    invoke-virtual {p0}, Lorg/slim/preference/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 940
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/slim/preference/colorpicker/ColorPickerView;->setAlphaSliderText(Ljava/lang/String;)V

    .line 938
    return-void
.end method

.method public setAlphaSliderText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 949
    iput-object p1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    .line 950
    invoke-virtual {p0}, Lorg/slim/preference/colorpicker/ColorPickerView;->invalidate()V

    .line 948
    return-void
.end method

.method public setAlphaSliderVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 903
    iget-boolean v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-eq v0, p1, :cond_0

    .line 904
    iput-boolean p1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    .line 911
    iput-object v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    .line 912
    iput-object v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mSatShader:Landroid/graphics/Shader;

    .line 913
    iput-object v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    .line 914
    iput-object v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlphaShader:Landroid/graphics/Shader;

    .line 916
    invoke-virtual {p0}, Lorg/slim/preference/colorpicker/ColorPickerView;->requestLayout()V

    .line 901
    :cond_0
    return-void
.end method

.method public setBorderColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 828
    iput p1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mBorderColor:I

    .line 829
    invoke-virtual {p0}, Lorg/slim/preference/colorpicker/ColorPickerView;->invalidate()V

    .line 827
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 852
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/slim/preference/colorpicker/ColorPickerView;->setColor(IZ)V

    .line 851
    return-void
.end method

.method public setColor(IZ)V
    .locals 12
    .param p1, "color"    # I
    .param p2, "callback"    # Z

    .prologue
    const/4 v7, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 863
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 864
    .local v0, "alpha":I
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 865
    .local v4, "red":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 866
    .local v1, "blue":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 868
    .local v2, "green":I
    new-array v3, v7, [F

    .line 870
    .local v3, "hsv":[F
    invoke-static {v4, v2, v1, v3}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    .line 872
    iput v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlpha:I

    .line 873
    aget v5, v3, v9

    iput v5, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mHue:F

    .line 874
    aget v5, v3, v10

    iput v5, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mSat:F

    .line 875
    aget v5, v3, v11

    iput v5, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mVal:F

    .line 877
    if-eqz p2, :cond_0

    iget-object v5, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mListener:Lorg/slim/preference/colorpicker/ColorPickerView$OnColorChangedListener;

    if-eqz v5, :cond_0

    .line 878
    iget-object v5, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mListener:Lorg/slim/preference/colorpicker/ColorPickerView$OnColorChangedListener;

    iget v6, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mAlpha:I

    new-array v7, v7, [F

    iget v8, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mHue:F

    aput v8, v7, v9

    iget v8, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mSat:F

    aput v8, v7, v10

    iget v8, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mVal:F

    aput v8, v7, v11

    invoke-static {v6, v7}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v6

    invoke-interface {v5, v6}, Lorg/slim/preference/colorpicker/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 881
    :cond_0
    invoke-virtual {p0}, Lorg/slim/preference/colorpicker/ColorPickerView;->invalidate()V

    .line 861
    return-void
.end method

.method public setOnColorChangedListener(Lorg/slim/preference/colorpicker/ColorPickerView$OnColorChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/slim/preference/colorpicker/ColorPickerView$OnColorChangedListener;

    .prologue
    .line 820
    iput-object p1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mListener:Lorg/slim/preference/colorpicker/ColorPickerView$OnColorChangedListener;

    .line 819
    return-void
.end method

.method public setSliderTrackerColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 922
    iput p1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mSliderTrackerColor:I

    .line 924
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/slim/preference/colorpicker/ColorPickerView;->mSliderTrackerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 926
    invoke-virtual {p0}, Lorg/slim/preference/colorpicker/ColorPickerView;->invalidate()V

    .line 921
    return-void
.end method
