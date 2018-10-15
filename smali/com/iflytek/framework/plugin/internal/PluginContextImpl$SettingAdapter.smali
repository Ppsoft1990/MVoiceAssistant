.class Lcom/iflytek/framework/plugin/internal/PluginContextImpl$SettingAdapter;
.super Ljava/lang/Object;
.source "PluginContextImpl.java"

# interfaces
.implements Lcom/iflytek/yd/util/ISettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/plugin/internal/PluginContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingAdapter"
.end annotation


# instance fields
.field private mSettings:Lik;

.field final synthetic this$0:Lcom/iflytek/framework/plugin/internal/PluginContextImpl;


# direct methods
.method public constructor <init>(Lcom/iflytek/framework/plugin/internal/PluginContextImpl;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$SettingAdapter;->this$0:Lcom/iflytek/framework/plugin/internal/PluginContextImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    invoke-static {p2, p3}, Lim;->a(Landroid/content/Context;Ljava/lang/String;)Lik;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$SettingAdapter;->mSettings:Lik;

    .line 407
    return-void
.end method


# virtual methods
.method public clearObject(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 496
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$SettingAdapter;->mSettings:Lik;

    invoke-interface {v0, p1}, Lik;->i(Ljava/lang/String;)V

    .line 497
    return-void
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 466
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$SettingAdapter;->mSettings:Lik;

    invoke-interface {v0, p1}, Lik;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 471
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$SettingAdapter;->mSettings:Lik;

    invoke-interface {v0, p1, p2}, Lik;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 446
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$SettingAdapter;->mSettings:Lik;

    invoke-interface {v0, p1}, Lik;->e(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .prologue
    .line 451
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$SettingAdapter;->mSettings:Lik;

    invoke-interface {v0, p1, p2}, Lik;->b(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 436
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$SettingAdapter;->mSettings:Lik;

    invoke-interface {v0, p1}, Lik;->d(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 441
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$SettingAdapter;->mSettings:Lik;

    invoke-interface {v0, p1, p2}, Lik;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 456
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$SettingAdapter;->mSettings:Lik;

    invoke-interface {v0, p1}, Lik;->f(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 461
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$SettingAdapter;->mSettings:Lik;

    invoke-interface {v0, p1, p2, p3}, Lik;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 476
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$SettingAdapter;->mSettings:Lik;

    invoke-interface {v0, p1}, Lik;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 481
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$SettingAdapter;->mSettings:Lik;

    invoke-interface {v0, p1, p2}, Lik;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSetted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 501
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$SettingAdapter;->mSettings:Lik;

    invoke-interface {v0, p1}, Lik;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public readObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 491
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$SettingAdapter;->mSettings:Lik;

    invoke-interface {v0, p1}, Lik;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeSetting(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 506
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$SettingAdapter;->mSettings:Lik;

    invoke-interface {v0, p1}, Lik;->b(Ljava/lang/String;)V

    .line 507
    return-void
.end method

.method public saveObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 486
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$SettingAdapter;->mSettings:Lik;

    invoke-interface {v0, p1, p2}, Lik;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 487
    return-void
.end method

.method public setSetting(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 416
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$SettingAdapter;->mSettings:Lik;

    invoke-interface {v0, p1, p2}, Lik;->a(Ljava/lang/String;F)V

    .line 417
    return-void
.end method

.method public setSetting(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 411
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$SettingAdapter;->mSettings:Lik;

    invoke-interface {v0, p1, p2}, Lik;->a(Ljava/lang/String;I)V

    .line 412
    return-void
.end method

.method public setSetting(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 421
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$SettingAdapter;->mSettings:Lik;

    invoke-interface {v0, p1, p2, p3}, Lik;->a(Ljava/lang/String;J)V

    .line 422
    return-void
.end method

.method public setSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$SettingAdapter;->mSettings:Lik;

    invoke-interface {v0, p1, p2}, Lik;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public setSetting(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 426
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$SettingAdapter;->mSettings:Lik;

    invoke-interface {v0, p1, p2}, Lik;->a(Ljava/lang/String;Z)V

    .line 427
    return-void
.end method
