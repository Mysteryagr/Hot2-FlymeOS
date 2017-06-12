.class public Lorg/slim/preference/colorpicker/ColorPickerPanelView;
.super Landroid/view/View;
.source "ColorPickerPanelView.java"


# static fields
.field private static final BORDER_WIDTH_PX:F = 1.0f


# instance fields
.field private mAlphaPattern:Lorg/slim/preference/colorpicker/AlphaPatternDrawable;

.field private mBorderColor:I

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mColor:I

.field private mColorPaint:Landroid/graphics/Paint;

.field private mColorRect:Landroid/graphics/RectF;

.field private mDensity:F

.field private mDrawingRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/slim/preference/colorpicker/ColorPickerPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/slim/preference/colorpicker/ColorPickerPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->mDensity:F

    .line 44
    const v0, -0x919192

    iput v0, p0, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->mBorderColor:I

    .line 45
    const/high16 v0, -0x1000000

    iput v0, p0, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->mColor:I

    .line 66
    invoke-direct {p0}, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->init()V

    .line 64
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->mBorderPaint:Landroid/graphics/Paint;

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->mColorPaint:Landroid/graphics/Paint;

    .line 72
    invoke-virtual {p0}, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->mDensity:F

    .line 69
    return-void
.end method

.method private setUpColorRect()V
    .locals 10

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 119
    iget-object v1, p0, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    .line 121
    .local v1, "dRect":Landroid/graphics/RectF;
    iget v5, v1, Landroid/graphics/RectF;->left:F

    add-float v2, v5, v6

    .line 122
    .local v2, "left":F
    iget v5, v1, Landroid/graphics/RectF;->top:F

    add-float v4, v5, v6

    .line 123
    .local v4, "top":F
    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v0, v5, v6

    .line 124
    .local v0, "bottom":F
    iget v5, v1, Landroid/graphics/RectF;->right:F

    sub-float v3, v5, v6

    .line 126
    .local v3, "right":F
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v2, v4, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    .line 128
    new-instance v5, Lorg/slim/preference/colorpicker/AlphaPatternDrawable;

    iget v6, p0, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->mDensity:F

    const/high16 v7, 0x40a00000    # 5.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v5, v6}, Lorg/slim/preference/colorpicker/AlphaPatternDrawable;-><init>(I)V

    iput-object v5, p0, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->mAlphaPattern:Lorg/slim/preference/colorpicker/AlphaPatternDrawable;

    .line 130
    iget-object v5, p0, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->mAlphaPattern:Lorg/slim/preference/colorpicker/AlphaPatternDrawable;

    .line 131
    iget-object v6, p0, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 132
    iget-object v7, p0, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 133
    iget-object v8, p0, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 134
    iget-object v9, p0, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 130
    invoke-virtual {v5, v6, v7, v8, v9}, Lorg/slim/preference/colorpicker/AlphaPatternDrawable;->setBounds(IIII)V

    .line 118
    return-void
.end method


# virtual methods
.method public getBorderColor()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->mBorderColor:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->mColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    .line 82
    .local v0, "rect":Landroid/graphics/RectF;
    iget-object v1, p0, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->mBorderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->mBorderColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget-object v1, p0, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 86
    iget-object v1, p0, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->mAlphaPattern:Lorg/slim/preference/colorpicker/AlphaPatternDrawable;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->mAlphaPattern:Lorg/slim/preference/colorpicker/AlphaPatternDrawable;

    invoke-virtual {v1, p1}, Lorg/slim/preference/colorpicker/AlphaPatternDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 90
    :cond_0
    iget-object v1, p0, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->mColorPaint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->mColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    iget-object v1, p0, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->mColorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 77
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 98
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 99
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 101
    .local v0, "height":I
    invoke-virtual {p0, v1, v0}, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->setMeasuredDimension(II)V

    .line 96
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 106
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 108
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    .line 109
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 110
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->getPaddingRight()I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 111
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 112
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->getPaddingBottom()I

    move-result v1

    sub-int v1, p2, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 114
    invoke-direct {p0}, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->setUpColorRect()V

    .line 105
    return-void
.end method

.method public setBorderColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 161
    iput p1, p0, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->mBorderColor:I

    .line 162
    invoke-virtual {p0}, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->invalidate()V

    .line 160
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 144
    iput p1, p0, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->mColor:I

    .line 145
    invoke-virtual {p0}, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->invalidate()V

    .line 143
    return-void
.end method
