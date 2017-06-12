.class Lorg/slim/preference/dslv/ActionListViewSettings$ViewHolder;
.super Ljava/lang/Object;
.source "ActionListViewSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/slim/preference/dslv/ActionListViewSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public clickActionDescriptionView:Landroid/widget/TextView;

.field public doubleTapActionDescriptionView:Landroid/widget/TextView;

.field public iconView:Landroid/widget/ImageView;

.field public longpressActionDescriptionView:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/slim/preference/dslv/ActionListViewSettings;


# direct methods
.method private constructor <init>(Lorg/slim/preference/dslv/ActionListViewSettings;)V
    .locals 0
    .param p1, "this$0"    # Lorg/slim/preference/dslv/ActionListViewSettings;

    .prologue
    .line 642
    iput-object p1, p0, Lorg/slim/preference/dslv/ActionListViewSettings$ViewHolder;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/slim/preference/dslv/ActionListViewSettings;Lorg/slim/preference/dslv/ActionListViewSettings$ViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lorg/slim/preference/dslv/ActionListViewSettings;

    .prologue
    invoke-direct {p0, p1}, Lorg/slim/preference/dslv/ActionListViewSettings$ViewHolder;-><init>(Lorg/slim/preference/dslv/ActionListViewSettings;)V

    return-void
.end method
