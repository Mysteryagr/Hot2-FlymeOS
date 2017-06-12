.class Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ActionListViewSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/slim/preference/dslv/ActionListViewSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionConfigsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lorg/slim/action/ActionConfig;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/slim/preference/dslv/ActionListViewSettings;


# direct methods
.method public constructor <init>(Lorg/slim/preference/dslv/ActionListViewSettings;Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p1, "this$0"    # Lorg/slim/preference/dslv/ActionListViewSettings;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lorg/slim/action/ActionConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 651
    .local p3, "clickActionDescriptions":Ljava/util/List;, "Ljava/util/List<Lorg/slim/action/ActionConfig;>;"
    iput-object p1, p0, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    .line 652
    const v0, 0x37090002

    .line 653
    const v1, 0x3702000f

    .line 652
    invoke-direct {p0, p2, v0, v1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 651
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 657
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 659
    .local v7, "v":Landroid/view/View;
    if-eq v7, p2, :cond_0

    if-eqz v7, :cond_0

    .line 660
    new-instance v3, Lorg/slim/preference/dslv/ActionListViewSettings$ViewHolder;

    iget-object v8, p0, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    const/4 v9, 0x0

    invoke-direct {v3, v8, v9}, Lorg/slim/preference/dslv/ActionListViewSettings$ViewHolder;-><init>(Lorg/slim/preference/dslv/ActionListViewSettings;Lorg/slim/preference/dslv/ActionListViewSettings$ViewHolder;)V

    .line 663
    .local v3, "holder":Lorg/slim/preference/dslv/ActionListViewSettings$ViewHolder;
    const v8, 0x3702000f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 665
    .local v0, "clickActionDescription":Landroid/widget/TextView;
    const v8, 0x37020013

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 667
    .local v6, "longpressActionDecription":Landroid/widget/TextView;
    const v8, 0x37020014

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 668
    .local v2, "doubleTapActionDescription":Landroid/widget/TextView;
    const v8, 0x3702000b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 670
    .local v4, "icon":Landroid/widget/ImageView;
    iget-object v8, p0, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v8}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get9(Lorg/slim/preference/dslv/ActionListViewSettings;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 671
    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 676
    :goto_0
    iget-object v8, p0, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v8}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get7(Lorg/slim/preference/dslv/ActionListViewSettings;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 677
    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 682
    :goto_1
    iput-object v4, v3, Lorg/slim/preference/dslv/ActionListViewSettings$ViewHolder;->iconView:Landroid/widget/ImageView;

    .line 683
    iput-object v0, v3, Lorg/slim/preference/dslv/ActionListViewSettings$ViewHolder;->clickActionDescriptionView:Landroid/widget/TextView;

    .line 685
    invoke-virtual {v7, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 688
    .end local v0    # "clickActionDescription":Landroid/widget/TextView;
    .end local v2    # "doubleTapActionDescription":Landroid/widget/TextView;
    .end local v3    # "holder":Lorg/slim/preference/dslv/ActionListViewSettings$ViewHolder;
    .end local v4    # "icon":Landroid/widget/ImageView;
    .end local v6    # "longpressActionDecription":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/slim/preference/dslv/ActionListViewSettings$ViewHolder;

    .line 690
    .restart local v3    # "holder":Lorg/slim/preference/dslv/ActionListViewSettings$ViewHolder;
    iget-object v9, v3, Lorg/slim/preference/dslv/ActionListViewSettings$ViewHolder;->clickActionDescriptionView:Landroid/widget/TextView;

    .line 691
    invoke-virtual {p0, p1}, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/slim/action/ActionConfig;

    invoke-virtual {v8}, Lorg/slim/action/ActionConfig;->getClickActionDescription()Ljava/lang/String;

    move-result-object v8

    .line 690
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 693
    iget-object v8, p0, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v8}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get9(Lorg/slim/preference/dslv/ActionListViewSettings;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 694
    iget-object v9, v3, Lorg/slim/preference/dslv/ActionListViewSettings$ViewHolder;->longpressActionDescriptionView:Landroid/widget/TextView;

    .line 695
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x37040020

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 696
    const-string/jumbo v10, " "

    .line 695
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 696
    invoke-virtual {p0, p1}, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/slim/action/ActionConfig;

    invoke-virtual {v8}, Lorg/slim/action/ActionConfig;->getLongpressActionDescription()Ljava/lang/String;

    move-result-object v8

    .line 695
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 694
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 698
    :cond_1
    iget-object v8, p0, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v8}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get7(Lorg/slim/preference/dslv/ActionListViewSettings;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 699
    iget-object v9, v3, Lorg/slim/preference/dslv/ActionListViewSettings$ViewHolder;->doubleTapActionDescriptionView:Landroid/widget/TextView;

    .line 700
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x37040005

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 701
    const-string/jumbo v10, " "

    .line 700
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 701
    invoke-virtual {p0, p1}, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/slim/action/ActionConfig;

    invoke-virtual {v8}, Lorg/slim/action/ActionConfig;->getDoubleTapActionDescription()Ljava/lang/String;

    move-result-object v8

    .line 700
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 699
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 704
    :cond_2
    const/4 v1, 0x0

    .line 705
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, p1}, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/slim/action/ActionConfig;

    invoke-virtual {v8}, Lorg/slim/action/ActionConfig;->getIcon()Ljava/lang/String;

    move-result-object v5

    .line 713
    .local v5, "iconUri":Ljava/lang/String;
    iget-object v8, p0, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v8}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get5(Lorg/slim/preference/dslv/ActionListViewSettings;)Landroid/app/Activity;

    move-result-object v9

    iget-object v8, p0, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v8}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get5(Lorg/slim/preference/dslv/ActionListViewSettings;)Landroid/app/Activity;

    move-result-object v10

    .line 714
    invoke-virtual {p0, p1}, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/slim/action/ActionConfig;

    invoke-virtual {v8}, Lorg/slim/action/ActionConfig;->getClickAction()Ljava/lang/String;

    move-result-object v8

    .line 713
    invoke-static {v10, v8, v5}, Lorg/slim/action/ActionHelper;->getActionIconImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 715
    const/16 v10, 0x24

    .line 712
    invoke-static {v9, v8, v10}, Lorg/slim/utils/ImageHelper;->resize(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 717
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    const-string/jumbo v8, "empty"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 718
    invoke-virtual {p0, p1}, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/slim/action/ActionConfig;

    invoke-virtual {v8}, Lorg/slim/action/ActionConfig;->getClickAction()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "**"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    .line 717
    if-nez v8, :cond_4

    .line 718
    :cond_3
    if-eqz v5, :cond_5

    .line 719
    const-string/jumbo v8, "system_shortcut="

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    .line 717
    if-eqz v8, :cond_5

    .line 720
    :cond_4
    if-eqz v1, :cond_5

    .line 722
    invoke-virtual {p0}, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x37060001

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 721
    invoke-static {v1, v8}, Lorg/slim/utils/ImageHelper;->getColoredDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 726
    :cond_5
    if-eqz v5, :cond_6

    const-string/jumbo v8, "system_shortcut="

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 727
    if-eqz v1, :cond_6

    .line 728
    invoke-virtual {p0}, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x37060001

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 727
    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 730
    :cond_6
    iget-object v8, v3, Lorg/slim/preference/dslv/ActionListViewSettings$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-static {v1}, Lorg/slim/utils/ImageHelper;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 732
    iget-object v8, p0, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v8}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get8(Lorg/slim/preference/dslv/ActionListViewSettings;)Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, v3, Lorg/slim/preference/dslv/ActionListViewSettings$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 733
    iget-object v8, v3, Lorg/slim/preference/dslv/ActionListViewSettings$ViewHolder;->iconView:Landroid/widget/ImageView;

    new-instance v9, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter$1;

    invoke-direct {v9, p0, p1}, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter$1;-><init>(Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;I)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 742
    :cond_7
    return-object v7

    .line 673
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v5    # "iconUri":Ljava/lang/String;
    .restart local v0    # "clickActionDescription":Landroid/widget/TextView;
    .restart local v2    # "doubleTapActionDescription":Landroid/widget/TextView;
    .restart local v4    # "icon":Landroid/widget/ImageView;
    .restart local v6    # "longpressActionDecription":Landroid/widget/TextView;
    :cond_8
    iput-object v6, v3, Lorg/slim/preference/dslv/ActionListViewSettings$ViewHolder;->longpressActionDescriptionView:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 679
    :cond_9
    iput-object v2, v3, Lorg/slim/preference/dslv/ActionListViewSettings$ViewHolder;->doubleTapActionDescriptionView:Landroid/widget/TextView;

    goto/16 :goto_1
.end method
