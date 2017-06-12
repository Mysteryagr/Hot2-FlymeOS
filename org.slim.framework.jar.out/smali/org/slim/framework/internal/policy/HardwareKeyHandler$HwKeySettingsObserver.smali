.class Lorg/slim/framework/internal/policy/HardwareKeyHandler$HwKeySettingsObserver;
.super Landroid/database/ContentObserver;
.source "HardwareKeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/slim/framework/internal/policy/HardwareKeyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HwKeySettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;


# direct methods
.method constructor <init>(Lorg/slim/framework/internal/policy/HardwareKeyHandler;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lorg/slim/framework/internal/policy/HardwareKeyHandler;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 182
    iput-object p1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$HwKeySettingsObserver;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    .line 183
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 182
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 188
    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$HwKeySettingsObserver;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    invoke-static {v1}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->-get0(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 190
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "disable_hw_keys"

    .line 189
    invoke-static {v1}, Lorg/slim/provider/SlimSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 193
    const-string/jumbo v1, "key_home_action"

    .line 192
    invoke-static {v1}, Lorg/slim/provider/SlimSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 196
    const-string/jumbo v1, "key_home_long_press_action"

    .line 195
    invoke-static {v1}, Lorg/slim/provider/SlimSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 199
    const-string/jumbo v1, "key_home_double_tap_action"

    .line 198
    invoke-static {v1}, Lorg/slim/provider/SlimSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 202
    const-string/jumbo v1, "key_menu_action"

    .line 201
    invoke-static {v1}, Lorg/slim/provider/SlimSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 205
    const-string/jumbo v1, "key_menu_long_press_action"

    .line 204
    invoke-static {v1}, Lorg/slim/provider/SlimSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 208
    const-string/jumbo v1, "key_menu_double_tap_action"

    .line 207
    invoke-static {v1}, Lorg/slim/provider/SlimSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 211
    const-string/jumbo v1, "key_assist_action"

    .line 210
    invoke-static {v1}, Lorg/slim/provider/SlimSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 214
    const-string/jumbo v1, "key_assist_long_press_action"

    .line 213
    invoke-static {v1}, Lorg/slim/provider/SlimSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 217
    const-string/jumbo v1, "key_assist_double_tap_action"

    .line 216
    invoke-static {v1}, Lorg/slim/provider/SlimSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 220
    const-string/jumbo v1, "key_app_switch_action"

    .line 219
    invoke-static {v1}, Lorg/slim/provider/SlimSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 223
    const-string/jumbo v1, "key_app_switch_long_press_action"

    .line 222
    invoke-static {v1}, Lorg/slim/provider/SlimSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 226
    const-string/jumbo v1, "key_app_switch_double_tap_action"

    .line 225
    invoke-static {v1}, Lorg/slim/provider/SlimSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 229
    const-string/jumbo v1, "key_back_action"

    .line 228
    invoke-static {v1}, Lorg/slim/provider/SlimSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 232
    const-string/jumbo v1, "key_back_long_press_action"

    .line 231
    invoke-static {v1}, Lorg/slim/provider/SlimSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 235
    const-string/jumbo v1, "key_back_double_tap_action"

    .line 234
    invoke-static {v1}, Lorg/slim/provider/SlimSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 238
    const-string/jumbo v1, "hardware_key_rebinding"

    .line 237
    invoke-static {v1}, Lorg/slim/provider/SlimSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 241
    const-string/jumbo v1, "key_camera_action"

    .line 240
    invoke-static {v1}, Lorg/slim/provider/SlimSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 244
    const-string/jumbo v1, "key_camera_long_press_action"

    .line 243
    invoke-static {v1}, Lorg/slim/provider/SlimSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 247
    const-string/jumbo v1, "key_camera_double_tap_action"

    .line 246
    invoke-static {v1}, Lorg/slim/provider/SlimSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 249
    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$HwKeySettingsObserver;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    invoke-static {v1}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->-wrap1(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)V

    .line 186
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 254
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$HwKeySettingsObserver;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    invoke-static {v0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->-wrap1(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)V

    .line 253
    return-void
.end method
