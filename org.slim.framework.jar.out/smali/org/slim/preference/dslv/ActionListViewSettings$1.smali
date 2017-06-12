.class Lorg/slim/preference/dslv/ActionListViewSettings$1;
.super Ljava/lang/Object;
.source "ActionListViewSettings.java"

# interfaces
.implements Lorg/slim/preference/dslv/DragSortListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/slim/preference/dslv/ActionListViewSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/slim/preference/dslv/ActionListViewSettings;


# direct methods
.method constructor <init>(Lorg/slim/preference/dslv/ActionListViewSettings;)V
    .locals 0
    .param p1, "this$0"    # Lorg/slim/preference/dslv/ActionListViewSettings;

    .prologue
    .line 139
    iput-object p1, p0, Lorg/slim/preference/dslv/ActionListViewSettings$1;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 4
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 142
    iget-object v1, p0, Lorg/slim/preference/dslv/ActionListViewSettings$1;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v1}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get1(Lorg/slim/preference/dslv/ActionListViewSettings;)Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/slim/action/ActionConfig;

    .line 144
    .local v0, "item":Lorg/slim/action/ActionConfig;
    iget-object v1, p0, Lorg/slim/preference/dslv/ActionListViewSettings$1;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v1}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get1(Lorg/slim/preference/dslv/ActionListViewSettings;)Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;->remove(Ljava/lang/Object;)V

    .line 145
    iget-object v1, p0, Lorg/slim/preference/dslv/ActionListViewSettings$1;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v1}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get1(Lorg/slim/preference/dslv/ActionListViewSettings;)Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;->insert(Ljava/lang/Object;I)V

    .line 147
    iget-object v1, p0, Lorg/slim/preference/dslv/ActionListViewSettings$1;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    iget-object v2, p0, Lorg/slim/preference/dslv/ActionListViewSettings$1;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v2}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get0(Lorg/slim/preference/dslv/ActionListViewSettings;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/slim/preference/dslv/ActionListViewSettings;->-wrap3(Lorg/slim/preference/dslv/ActionListViewSettings;Ljava/util/ArrayList;Z)V

    .line 141
    return-void
.end method
