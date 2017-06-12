.class Lorg/slim/preference/colorpicker/ColorPickerDialog$1;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/slim/preference/colorpicker/ColorPickerDialog;->setUp(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/slim/preference/colorpicker/ColorPickerDialog;


# direct methods
.method constructor <init>(Lorg/slim/preference/colorpicker/ColorPickerDialog;)V
    .locals 0
    .param p1, "this$0"    # Lorg/slim/preference/colorpicker/ColorPickerDialog;

    .prologue
    .line 134
    iput-object p1, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog$1;->this$0:Lorg/slim/preference/colorpicker/ColorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 138
    iget-object v3, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog$1;->this$0:Lorg/slim/preference/colorpicker/ColorPickerDialog;

    invoke-static {v3}, Lorg/slim/preference/colorpicker/ColorPickerDialog;->-get1(Lorg/slim/preference/colorpicker/ColorPickerDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "text":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lorg/slim/preference/colorpicker/ColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result v1

    .line 141
    .local v1, "newColor":I
    iget-object v3, p0, Lorg/slim/preference/colorpicker/ColorPickerDialog$1;->this$0:Lorg/slim/preference/colorpicker/ColorPickerDialog;

    invoke-static {v3}, Lorg/slim/preference/colorpicker/ColorPickerDialog;->-get0(Lorg/slim/preference/colorpicker/ColorPickerDialog;)Lorg/slim/preference/colorpicker/ColorPickerView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Lorg/slim/preference/colorpicker/ColorPickerView;->setColor(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v1    # "newColor":I
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
