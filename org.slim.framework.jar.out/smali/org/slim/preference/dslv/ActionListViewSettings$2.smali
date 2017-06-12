.class Lorg/slim/preference/dslv/ActionListViewSettings$2;
.super Ljava/lang/Object;
.source "ActionListViewSettings.java"

# interfaces
.implements Lorg/slim/preference/dslv/DragSortListView$RemoveListener;


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
    .line 152
    iput-object p1, p0, Lorg/slim/preference/dslv/ActionListViewSettings$2;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public remove(I)V
    .locals 10
    .param p1, "which"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 155
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$2;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get1(Lorg/slim/preference/dslv/ActionListViewSettings;)Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/slim/action/ActionConfig;

    .line 156
    .local v9, "item":Lorg/slim/action/ActionConfig;
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$2;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get1(Lorg/slim/preference/dslv/ActionListViewSettings;)Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;

    move-result-object v0

    invoke-virtual {v0, v9}, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;->remove(Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$2;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get6(Lorg/slim/preference/dslv/ActionListViewSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$2;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get0(Lorg/slim/preference/dslv/ActionListViewSettings;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 158
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$2;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get1(Lorg/slim/preference/dslv/ActionListViewSettings;)Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;

    move-result-object v0

    invoke-virtual {v0, v9}, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;->add(Ljava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$2;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    const/4 v1, 0x2

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lorg/slim/preference/dslv/ActionListViewSettings;->-wrap4(Lorg/slim/preference/dslv/ActionListViewSettings;IIZZZ)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$2;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get5(Lorg/slim/preference/dslv/ActionListViewSettings;)Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "**back**"

    .line 160
    invoke-static {v0, v9, v1}, Lorg/slim/action/ActionChecker;->containsAction(Landroid/content/Context;Lorg/slim/action/ActionConfig;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 162
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$2;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0, v9}, Lorg/slim/preference/dslv/ActionListViewSettings;->-set4(Lorg/slim/preference/dslv/ActionListViewSettings;Lorg/slim/action/ActionConfig;)Lorg/slim/action/ActionConfig;

    .line 163
    iget-object v3, p0, Lorg/slim/preference/dslv/ActionListViewSettings$2;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    const/4 v4, 0x6

    move v5, p1

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-static/range {v3 .. v8}, Lorg/slim/preference/dslv/ActionListViewSettings;->-wrap4(Lorg/slim/preference/dslv/ActionListViewSettings;IIZZZ)V

    goto :goto_0

    .line 165
    :cond_2
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$2;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get5(Lorg/slim/preference/dslv/ActionListViewSettings;)Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "**home**"

    .line 164
    invoke-static {v0, v9, v1}, Lorg/slim/action/ActionChecker;->containsAction(Landroid/content/Context;Lorg/slim/action/ActionConfig;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 166
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$2;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0, v9}, Lorg/slim/preference/dslv/ActionListViewSettings;->-set4(Lorg/slim/preference/dslv/ActionListViewSettings;Lorg/slim/action/ActionConfig;)Lorg/slim/action/ActionConfig;

    .line 167
    iget-object v3, p0, Lorg/slim/preference/dslv/ActionListViewSettings$2;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    const/4 v4, 0x5

    move v5, p1

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-static/range {v3 .. v8}, Lorg/slim/preference/dslv/ActionListViewSettings;->-wrap4(Lorg/slim/preference/dslv/ActionListViewSettings;IIZZZ)V

    goto :goto_0

    .line 169
    :cond_3
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$2;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    iget-object v1, p0, Lorg/slim/preference/dslv/ActionListViewSettings$2;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v1}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get0(Lorg/slim/preference/dslv/ActionListViewSettings;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lorg/slim/preference/dslv/ActionListViewSettings;->-wrap3(Lorg/slim/preference/dslv/ActionListViewSettings;Ljava/util/ArrayList;Z)V

    .line 170
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$2;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0, v9, v3}, Lorg/slim/preference/dslv/ActionListViewSettings;->-wrap2(Lorg/slim/preference/dslv/ActionListViewSettings;Lorg/slim/action/ActionConfig;Z)V

    .line 171
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$2;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get0(Lorg/slim/preference/dslv/ActionListViewSettings;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$2;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0, v3}, Lorg/slim/preference/dslv/ActionListViewSettings;->-wrap5(Lorg/slim/preference/dslv/ActionListViewSettings;Z)V

    goto :goto_0
.end method
