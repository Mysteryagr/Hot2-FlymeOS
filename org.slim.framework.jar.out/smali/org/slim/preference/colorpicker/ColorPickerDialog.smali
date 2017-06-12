.class public Lorg/slim/preference/colorpicker/ColorPickerDialog;
.super Landroid/app/Dialog;
.source "ColorPickerDialog.java"

# interfaces
.implements Lorg/slim/preference/colorpicker/ColorPickerView$OnColorChangedListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/slim/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;
    }
.end annotation


# instance fields
.field private mBlack:Lorg/slim/preference/colorpicker/ColorPickerPanelView;

.field private mColorPicker:Lorg/slim/preference/colorpicker/ColorPickerView;

.field private mContext:Landroid/content/Context;

.field private mCyan:Lorg/slim/preference/colorpicker/ColorPickerPanelView;

.field private mGreen:Lorg/slim/preference/colorpicker/ColorPickerPanelView;

.field private mHex:Landroid/widget/EditText;

.field private mListener:Lorg/slim/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;

.field private mNewColor:Lorg/slim/preference/colorpicker/ColorPickerPanelView;

.field private mOldColor:Lorg/slim/preference/colorpicker/ColorPickerPanelView;

.field private mRed:Lorg/slim/preference/colorpicker/ColorPickerPanelView;

.field private mSetButton:Landroid/widget/ImageButton;

.field private mWhite:Lorg/slim/preference/colorpicker/ColorPickerPanelView;

.field private mYellow:Lorg/slim/preference/colorpicker/ColorPickerPanelView;


# direct methods
.method static synthetic -get0(Lorg/slim/preference/colorpicker/ColorPickerDialog;)Lorg/slim/preference/colorpicker/ColorPickerView;
    .locals 1

    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lorg/slim/preference/colorpicker/ColorPickerView;

    return-object v0
.end method

.method static synthetic -get1(Lorg/slim/preference/colorpicker/ColorPickerDialog;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mHex:Landroid/widget/EditText;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "initialColor"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lorg/slim/preference/colorpicker/ColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "org.slim.framework"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    invoke-direct {p0, p2}, Lorg/slim/preference/colorpicker/ColorPickerDialog;->init(I)V

    .line 65
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private init(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    const/4 v1, 0x1

    .line 79
    invoke-virtual {p0}, Lorg/slim/preference/colorpicker/ColorPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 80
    invoke-virtual {p0, v1}, Lorg/slim/preference/colorpicker/ColorPickerDialog;->requestWindowFeature(I)Z

    .line 81
    invoke-direct {p0, p1}, Lorg/slim/preference/colorpicker/ColorPickerDialog;->setUp(I)V

    .line 77
    return-void
.end method

.method private setUp(I)V
    .locals 6
    .param p1, "color"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 87
    iget-object v2, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mContext:Landroid/content/Context;

    .line 88
    const-string/jumbo v3, "layout_inflater"

    .line 87
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 90
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x37090001

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 92
    .local v1, "layout":Landroid/view/View;
    invoke-virtual {p0, v1}, Lorg/slim/preference/colorpicker/ColorPickerDialog;->setContentView(Landroid/view/View;)V

    .line 94
    const v2, 0x37040001

    invoke-virtual {p0, v2}, Lorg/slim/preference/colorpicker/ColorPickerDialog;->setTitle(I)V

    .line 96
    const v2, 0x37020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/slim/preference/colorpicker/ColorPickerView;

    iput-object v2, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lorg/slim/preference/colorpicker/ColorPickerView;

    .line 97
    const v2, 0x37020003

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/slim/preference/colorpicker/ColorPickerPanelView;

    iput-object v2, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mOldColor:Lorg/slim/preference/colorpicker/ColorPickerPanelView;

    .line 98
    const v2, 0x37020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/slim/preference/colorpicker/ColorPickerPanelView;

    iput-object v2, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mNewColor:Lorg/slim/preference/colorpicker/ColorPickerPanelView;

    .line 100
    const v2, 0x37020005

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/slim/preference/colorpicker/ColorPickerPanelView;

    iput-object v2, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mWhite:Lorg/slim/preference/colorpicker/ColorPickerPanelView;

    .line 101
    const v2, 0x37020006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/slim/preference/colorpicker/ColorPickerPanelView;

    iput-object v2, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mBlack:Lorg/slim/preference/colorpicker/ColorPickerPanelView;

    .line 102
    const v2, 0x37020007

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/slim/preference/colorpicker/ColorPickerPanelView;

    iput-object v2, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mCyan:Lorg/slim/preference/colorpicker/ColorPickerPanelView;

    .line 103
    const v2, 0x37020008

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/slim/preference/colorpicker/ColorPickerPanelView;

    iput-object v2, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mRed:Lorg/slim/preference/colorpicker/ColorPickerPanelView;

    .line 104
    const v2, 0x37020009

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/slim/preference/colorpicker/ColorPickerPanelView;

    iput-object v2, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mGreen:Lorg/slim/preference/colorpicker/ColorPickerPanelView;

    .line 105
    const v2, 0x37020010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/slim/preference/colorpicker/ColorPickerPanelView;

    iput-object v2, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mYellow:Lorg/slim/preference/colorpicker/ColorPickerPanelView;

    .line 107
    const v2, 0x37020011

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mHex:Landroid/widget/EditText;

    .line 108
    const v2, 0x37020012

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mSetButton:Landroid/widget/ImageButton;

    .line 110
    iget-object v2, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mOldColor:Lorg/slim/preference/colorpicker/ColorPickerPanelView;

    invoke-virtual {v2}, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 111
    iget-object v3, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lorg/slim/preference/colorpicker/ColorPickerView;

    invoke-virtual {v3}, Lorg/slim/preference/colorpicker/ColorPickerView;->getDrawingOffset()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 113
    iget-object v4, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lorg/slim/preference/colorpicker/ColorPickerView;

    invoke-virtual {v4}, Lorg/slim/preference/colorpicker/ColorPickerView;->getDrawingOffset()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 110
    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 117
    iget-object v2, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mOldColor:Lorg/slim/preference/colorpicker/ColorPickerPanelView;

    invoke-virtual {v2, p0}, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v2, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mNewColor:Lorg/slim/preference/colorpicker/ColorPickerPanelView;

    invoke-virtual {v2, p0}, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v2, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lorg/slim/preference/colorpicker/ColorPickerView;

    invoke-virtual {v2, p0}, Lorg/slim/preference/colorpicker/ColorPickerView;->setOnColorChangedListener(Lorg/slim/preference/colorpicker/ColorPickerView$OnColorChangedListener;)V

    .line 120
    iget-object v2, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mOldColor:Lorg/slim/preference/colorpicker/ColorPickerPanelView;

    invoke-virtual {v2, p1}, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->setColor(I)V

    .line 121
    iget-object v2, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lorg/slim/preference/colorpicker/ColorPickerView;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lorg/slim/preference/colorpicker/ColorPickerView;->setColor(IZ)V

    .line 123
    iget-object v2, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mWhite:Lorg/slim/preference/colorpicker/ColorPickerPanelView;

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Lorg/slim/preference/colorpicker/ColorPickerDialog;->setColorAndClickAction(Lorg/slim/preference/colorpicker/ColorPickerPanelView;I)V

    .line 124
    iget-object v2, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mBlack:Lorg/slim/preference/colorpicker/ColorPickerPanelView;

    const/high16 v3, -0x1000000

    invoke-virtual {p0, v2, v3}, Lorg/slim/preference/colorpicker/ColorPickerDialog;->setColorAndClickAction(Lorg/slim/preference/colorpicker/ColorPickerPanelView;I)V

    .line 125
    iget-object v2, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mCyan:Lorg/slim/preference/colorpicker/ColorPickerPanelView;

    const v3, -0xcc4a1b

    invoke-virtual {p0, v2, v3}, Lorg/slim/preference/colorpicker/ColorPickerDialog;->setColorAndClickAction(Lorg/slim/preference/colorpicker/ColorPickerPanelView;I)V

    .line 126
    iget-object v2, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mRed:Lorg/slim/preference/colorpicker/ColorPickerPanelView;

    const/high16 v3, -0x10000

    invoke-virtual {p0, v2, v3}, Lorg/slim/preference/colorpicker/ColorPickerDialog;->setColorAndClickAction(Lorg/slim/preference/colorpicker/ColorPickerPanelView;I)V

    .line 127
    iget-object v2, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mGreen:Lorg/slim/preference/colorpicker/ColorPickerPanelView;

    const v3, -0xff0100

    invoke-virtual {p0, v2, v3}, Lorg/slim/preference/colorpicker/ColorPickerDialog;->setColorAndClickAction(Lorg/slim/preference/colorpicker/ColorPickerPanelView;I)V

    .line 128
    iget-object v2, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mYellow:Lorg/slim/preference/colorpicker/ColorPickerPanelView;

    const/16 v3, -0x100

    invoke-virtual {p0, v2, v3}, Lorg/slim/preference/colorpicker/ColorPickerDialog;->setColorAndClickAction(Lorg/slim/preference/colorpicker/ColorPickerPanelView;I)V

    .line 130
    iget-object v2, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mHex:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 131
    iget-object v2, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mHex:Landroid/widget/EditText;

    invoke-static {p1}, Lorg/slim/preference/colorpicker/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :cond_0
    iget-object v2, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mSetButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    .line 134
    iget-object v2, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mSetButton:Landroid/widget/ImageButton;

    new-instance v3, Lorg/slim/preference/colorpicker/ColorPickerDialog$1;

    invoke-direct {v3, p0}, Lorg/slim/preference/colorpicker/ColorPickerDialog$1;-><init>(Lorg/slim/preference/colorpicker/ColorPickerDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    :cond_1
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lorg/slim/preference/colorpicker/ColorPickerView;

    invoke-virtual {v0}, Lorg/slim/preference/colorpicker/ColorPickerView;->getColor()I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 200
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x37020004

    if-ne v0, v1, :cond_0

    .line 201
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mListener:Lorg/slim/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mListener:Lorg/slim/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;

    iget-object v1, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mNewColor:Lorg/slim/preference/colorpicker/ColorPickerPanelView;

    invoke-virtual {v1}, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->getColor()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/slim/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;->onColorChanged(I)V

    .line 205
    :cond_0
    invoke-virtual {p0}, Lorg/slim/preference/colorpicker/ColorPickerDialog;->dismiss()V

    .line 199
    return-void
.end method

.method public onColorChanged(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 152
    iget-object v1, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mNewColor:Lorg/slim/preference/colorpicker/ColorPickerPanelView;

    invoke-virtual {v1, p1}, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->setColor(I)V

    .line 154
    :try_start_0
    iget-object v1, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mHex:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mHex:Landroid/widget/EditText;

    invoke-static {p1}, Lorg/slim/preference/colorpicker/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 218
    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 219
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mOldColor:Lorg/slim/preference/colorpicker/ColorPickerPanelView;

    const-string/jumbo v1, "old_color"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->setColor(I)V

    .line 220
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lorg/slim/preference/colorpicker/ColorPickerView;

    const-string/jumbo v1, "new_color"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/slim/preference/colorpicker/ColorPickerView;->setColor(IZ)V

    .line 217
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 210
    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 211
    .local v0, "state":Landroid/os/Bundle;
    const-string/jumbo v1, "old_color"

    iget-object v2, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mOldColor:Lorg/slim/preference/colorpicker/ColorPickerPanelView;

    invoke-virtual {v2}, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->getColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 212
    const-string/jumbo v1, "new_color"

    iget-object v2, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mNewColor:Lorg/slim/preference/colorpicker/ColorPickerPanelView;

    invoke-virtual {v2}, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->getColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 213
    return-object v0
.end method

.method public setAlphaSliderVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 167
    iget-object v0, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lorg/slim/preference/colorpicker/ColorPickerView;

    invoke-virtual {v0, p1}, Lorg/slim/preference/colorpicker/ColorPickerView;->setAlphaSliderVisible(Z)V

    .line 166
    return-void
.end method

.method public setColorAndClickAction(Lorg/slim/preference/colorpicker/ColorPickerPanelView;I)V
    .locals 1
    .param p1, "previewRect"    # Lorg/slim/preference/colorpicker/ColorPickerPanelView;
    .param p2, "color"    # I

    .prologue
    .line 171
    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {p1, p2}, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->setColor(I)V

    .line 173
    new-instance v0, Lorg/slim/preference/colorpicker/ColorPickerDialog$2;

    invoke-direct {v0, p0, p2}, Lorg/slim/preference/colorpicker/ColorPickerDialog$2;-><init>(Lorg/slim/preference/colorpicker/ColorPickerDialog;I)V

    invoke-virtual {p1, v0}, Lorg/slim/preference/colorpicker/ColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    :cond_0
    return-void
.end method

.method public setOnColorChangedListener(Lorg/slim/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/slim/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;

    .prologue
    .line 191
    iput-object p1, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog;->mListener:Lorg/slim/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;

    .line 190
    return-void
.end method
