.class Lorg/slim/preference/colorpicker/ColorPickerDialog$2;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/slim/preference/colorpicker/ColorPickerDialog;->setColorAndClickAction(Lorg/slim/preference/colorpicker/ColorPickerPanelView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/slim/preference/colorpicker/ColorPickerDialog;

.field final synthetic val$color:I


# direct methods
.method constructor <init>(Lorg/slim/preference/colorpicker/ColorPickerDialog;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/slim/preference/colorpicker/ColorPickerDialog;
    .param p2, "val$color"    # I

    .prologue
    .line 173
    iput-object p1, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog$2;->this$0:Lorg/slim/preference/colorpicker/ColorPickerDialog;

    iput p2, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog$2;->val$color:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 177
    :try_start_0
    iget-object v1, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog$2;->this$0:Lorg/slim/preference/colorpicker/ColorPickerDialog;

    invoke-static {v1}, Lorg/slim/preference/colorpicker/ColorPickerDialog;->-get0(Lorg/slim/preference/colorpicker/ColorPickerDialog;)Lorg/slim/preference/colorpicker/ColorPickerView;

    move-result-object v1

    iget v2, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog$2;->val$color:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/slim/preference/colorpicker/ColorPickerView;->setColor(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
