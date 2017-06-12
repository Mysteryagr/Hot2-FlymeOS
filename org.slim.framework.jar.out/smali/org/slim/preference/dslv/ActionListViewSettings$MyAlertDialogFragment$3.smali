.class Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$3;
.super Ljava/lang/Object;
.source "ActionListViewSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;


# direct methods
.method constructor <init>(Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;)V
    .locals 0
    .param p1, "this$1"    # Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    .prologue
    .line 860
    iput-object p1, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$3;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 862
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 861
    return-void
.end method
