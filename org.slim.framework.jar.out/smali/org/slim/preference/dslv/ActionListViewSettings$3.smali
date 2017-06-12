.class Lorg/slim/preference/dslv/ActionListViewSettings$3;
.super Ljava/lang/Object;
.source "ActionListViewSettings.java"

# interfaces
.implements Lorg/slim/preference/dslv/DragSortController$OnItemTouchedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/slim/preference/dslv/ActionListViewSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
    .line 244
    iput-object p1, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(I)Z
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 247
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get7(Lorg/slim/preference/dslv/ActionListViewSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 248
    :cond_0
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get15(Lorg/slim/preference/dslv/ActionListViewSettings;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get12(Lorg/slim/preference/dslv/ActionListViewSettings;)Lorg/slim/utils/ShortcutPickerHelper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0, p1}, Lorg/slim/preference/dslv/ActionListViewSettings;->-set1(Lorg/slim/preference/dslv/ActionListViewSettings;I)I

    .line 251
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0, v1}, Lorg/slim/preference/dslv/ActionListViewSettings;->-set2(Lorg/slim/preference/dslv/ActionListViewSettings;Z)Z

    .line 252
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0, v4}, Lorg/slim/preference/dslv/ActionListViewSettings;->-set0(Lorg/slim/preference/dslv/ActionListViewSettings;Z)Z

    .line 253
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0, v1}, Lorg/slim/preference/dslv/ActionListViewSettings;->-set3(Lorg/slim/preference/dslv/ActionListViewSettings;Z)Z

    .line 254
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get12(Lorg/slim/preference/dslv/ActionListViewSettings;)Lorg/slim/utils/ShortcutPickerHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-virtual {v1}, Lorg/slim/preference/dslv/ActionListViewSettings;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v4}, Lorg/slim/utils/ShortcutPickerHelper;->pickShortcut(IZ)V

    .line 267
    :cond_1
    :goto_0
    return v4

    .line 256
    :cond_2
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get14(Lorg/slim/preference/dslv/ActionListViewSettings;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 257
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    move v2, p1

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Lorg/slim/preference/dslv/ActionListViewSettings;->-wrap4(Lorg/slim/preference/dslv/ActionListViewSettings;IIZZZ)V

    goto :goto_0

    .line 259
    :cond_3
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get12(Lorg/slim/preference/dslv/ActionListViewSettings;)Lorg/slim/utils/ShortcutPickerHelper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0, p1}, Lorg/slim/preference/dslv/ActionListViewSettings;->-set1(Lorg/slim/preference/dslv/ActionListViewSettings;I)I

    .line 261
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0, v1}, Lorg/slim/preference/dslv/ActionListViewSettings;->-set2(Lorg/slim/preference/dslv/ActionListViewSettings;Z)Z

    .line 262
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0, v4}, Lorg/slim/preference/dslv/ActionListViewSettings;->-set0(Lorg/slim/preference/dslv/ActionListViewSettings;Z)Z

    .line 263
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0, v1}, Lorg/slim/preference/dslv/ActionListViewSettings;->-set3(Lorg/slim/preference/dslv/ActionListViewSettings;Z)Z

    .line 264
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get12(Lorg/slim/preference/dslv/ActionListViewSettings;)Lorg/slim/utils/ShortcutPickerHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-virtual {v1}, Lorg/slim/preference/dslv/ActionListViewSettings;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/slim/utils/ShortcutPickerHelper;->pickShortcut(I)V

    goto :goto_0
.end method

.method public onLongClick(I)Z
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 303
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get9(Lorg/slim/preference/dslv/ActionListViewSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 304
    :cond_0
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get15(Lorg/slim/preference/dslv/ActionListViewSettings;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get12(Lorg/slim/preference/dslv/ActionListViewSettings;)Lorg/slim/utils/ShortcutPickerHelper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0, p1}, Lorg/slim/preference/dslv/ActionListViewSettings;->-set1(Lorg/slim/preference/dslv/ActionListViewSettings;I)I

    .line 307
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0, v3}, Lorg/slim/preference/dslv/ActionListViewSettings;->-set2(Lorg/slim/preference/dslv/ActionListViewSettings;Z)Z

    .line 308
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0, v1}, Lorg/slim/preference/dslv/ActionListViewSettings;->-set3(Lorg/slim/preference/dslv/ActionListViewSettings;Z)Z

    .line 309
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get12(Lorg/slim/preference/dslv/ActionListViewSettings;)Lorg/slim/utils/ShortcutPickerHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-virtual {v1}, Lorg/slim/preference/dslv/ActionListViewSettings;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lorg/slim/utils/ShortcutPickerHelper;->pickShortcut(IZ)V

    .line 321
    :cond_1
    :goto_0
    return v3

    .line 311
    :cond_2
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get14(Lorg/slim/preference/dslv/ActionListViewSettings;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 312
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    move v2, p1

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Lorg/slim/preference/dslv/ActionListViewSettings;->-wrap4(Lorg/slim/preference/dslv/ActionListViewSettings;IIZZZ)V

    goto :goto_0

    .line 314
    :cond_3
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get12(Lorg/slim/preference/dslv/ActionListViewSettings;)Lorg/slim/utils/ShortcutPickerHelper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0, p1}, Lorg/slim/preference/dslv/ActionListViewSettings;->-set1(Lorg/slim/preference/dslv/ActionListViewSettings;I)I

    .line 316
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0, v3}, Lorg/slim/preference/dslv/ActionListViewSettings;->-set2(Lorg/slim/preference/dslv/ActionListViewSettings;Z)Z

    .line 317
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0, v1}, Lorg/slim/preference/dslv/ActionListViewSettings;->-set3(Lorg/slim/preference/dslv/ActionListViewSettings;Z)Z

    .line 318
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get12(Lorg/slim/preference/dslv/ActionListViewSettings;)Lorg/slim/utils/ShortcutPickerHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-virtual {v1}, Lorg/slim/preference/dslv/ActionListViewSettings;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/slim/utils/ShortcutPickerHelper;->pickShortcut(I)V

    goto :goto_0
.end method

.method public onSingleClick(I)Z
    .locals 13
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 272
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get15(Lorg/slim/preference/dslv/ActionListViewSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get12(Lorg/slim/preference/dslv/ActionListViewSettings;)Lorg/slim/utils/ShortcutPickerHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0, p1}, Lorg/slim/preference/dslv/ActionListViewSettings;->-set1(Lorg/slim/preference/dslv/ActionListViewSettings;I)I

    .line 275
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0, v3}, Lorg/slim/preference/dslv/ActionListViewSettings;->-set2(Lorg/slim/preference/dslv/ActionListViewSettings;Z)Z

    .line 276
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0, v3}, Lorg/slim/preference/dslv/ActionListViewSettings;->-set3(Lorg/slim/preference/dslv/ActionListViewSettings;Z)Z

    .line 277
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get12(Lorg/slim/preference/dslv/ActionListViewSettings;)Lorg/slim/utils/ShortcutPickerHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-virtual {v1}, Lorg/slim/preference/dslv/ActionListViewSettings;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v5}, Lorg/slim/utils/ShortcutPickerHelper;->pickShortcut(IZ)V

    .line 298
    :cond_0
    :goto_0
    return v5

    .line 279
    :cond_1
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get14(Lorg/slim/preference/dslv/ActionListViewSettings;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 280
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get1(Lorg/slim/preference/dslv/ActionListViewSettings;)Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/slim/action/ActionConfig;

    .line 281
    .local v12, "actionConfig":Lorg/slim/action/ActionConfig;
    const-string/jumbo v0, "**back**"

    .line 282
    invoke-virtual {v12}, Lorg/slim/action/ActionConfig;->getClickAction()Ljava/lang/String;

    move-result-object v1

    .line 281
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    const/4 v1, 0x6

    move v2, p1

    move v4, v3

    invoke-static/range {v0 .. v5}, Lorg/slim/preference/dslv/ActionListViewSettings;->-wrap4(Lorg/slim/preference/dslv/ActionListViewSettings;IIZZZ)V

    goto :goto_0

    .line 284
    :cond_2
    const-string/jumbo v0, "**home**"

    .line 285
    invoke-virtual {v12}, Lorg/slim/action/ActionConfig;->getClickAction()Ljava/lang/String;

    move-result-object v1

    .line 284
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 286
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    const/4 v1, 0x5

    move v2, p1

    move v4, v3

    invoke-static/range {v0 .. v5}, Lorg/slim/preference/dslv/ActionListViewSettings;->-wrap4(Lorg/slim/preference/dslv/ActionListViewSettings;IIZZZ)V

    goto :goto_0

    .line 288
    :cond_3
    iget-object v6, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    move v7, v3

    move v8, p1

    move v9, v3

    move v10, v3

    move v11, v3

    invoke-static/range {v6 .. v11}, Lorg/slim/preference/dslv/ActionListViewSettings;->-wrap4(Lorg/slim/preference/dslv/ActionListViewSettings;IIZZZ)V

    goto :goto_0

    .line 291
    .end local v12    # "actionConfig":Lorg/slim/action/ActionConfig;
    :cond_4
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get12(Lorg/slim/preference/dslv/ActionListViewSettings;)Lorg/slim/utils/ShortcutPickerHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0, p1}, Lorg/slim/preference/dslv/ActionListViewSettings;->-set1(Lorg/slim/preference/dslv/ActionListViewSettings;I)I

    .line 293
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0, v3}, Lorg/slim/preference/dslv/ActionListViewSettings;->-set2(Lorg/slim/preference/dslv/ActionListViewSettings;Z)Z

    .line 294
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0, v3}, Lorg/slim/preference/dslv/ActionListViewSettings;->-set3(Lorg/slim/preference/dslv/ActionListViewSettings;Z)Z

    .line 295
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-static {v0}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get12(Lorg/slim/preference/dslv/ActionListViewSettings;)Lorg/slim/utils/ShortcutPickerHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/slim/preference/dslv/ActionListViewSettings$3;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    invoke-virtual {v1}, Lorg/slim/preference/dslv/ActionListViewSettings;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/slim/utils/ShortcutPickerHelper;->pickShortcut(I)V

    goto :goto_0
.end method
