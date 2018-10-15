.class Lahi$1;
.super Ljava/lang/Object;
.source "HomeNewUserGuideHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahi;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lahi;


# direct methods
.method constructor <init>(Lahi;)V
    .locals 0
    .param p1, "this$0"    # Lahi;

    .prologue
    .line 227
    iput-object p1, p0, Lahi$1;->a:Lahi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 230
    iget-object v3, p0, Lahi$1;->a:Lahi;

    invoke-static {v3}, Lahi;->a(Lahi;)Lcom/iflytek/viafly/guide/UserGuideView;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 235
    :try_start_0
    iget-object v3, p0, Lahi$1;->a:Lahi;

    invoke-virtual {v3}, Lahi;->p()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v3

    const-string/jumbo v4, "LX_100062"

    invoke-virtual {v3, v4}, Lwz;->a(Ljava/lang/String;)V

    .line 236
    iget-object v3, p0, Lahi$1;->a:Lahi;

    invoke-static {v3}, Lahi;->a(Lahi;)Lcom/iflytek/viafly/guide/UserGuideView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/guide/UserGuideView;->b()V

    .line 237
    iget-object v3, p0, Lahi$1;->a:Lahi;

    invoke-virtual {v3}, Lahi;->s()Landroid/widget/RelativeLayout;

    move-result-object v3

    iget-object v4, p0, Lahi$1;->a:Lahi;

    invoke-static {v4}, Lahi;->a(Lahi;)Lcom/iflytek/viafly/guide/UserGuideView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 238
    iget-object v3, p0, Lahi$1;->a:Lahi;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lahi;->a(Lahi;Lcom/iflytek/viafly/guide/UserGuideView;)Lcom/iflytek/viafly/guide/UserGuideView;

    .line 240
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 242
    iget-object v3, p0, Lahi$1;->a:Lahi;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lahi;->a(Lahi;Z)V

    .line 244
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccVERSION_CODE"

    iget-object v5, p0, Lahi$1;->a:Lahi;

    .line 245
    invoke-virtual {v5}, Lahi;->p()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lhl;->h(Landroid/content/Context;)I

    move-result v5

    .line 244
    invoke-virtual {v3, v4, v5}, Lil;->a(Ljava/lang/String;I)V

    .line 247
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmcc.IFLY_GUIDE_PAGE_SHOW_V6"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lil;->a(Ljava/lang/String;Z)V

    .line 252
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v3

    new-instance v4, Lakf;

    const-string/jumbo v5, "UserGuideEntryEvent"

    invoke-direct {v4, v5}, Lakf;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 254
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->getPlugin(I)Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    move-result-object v2

    .line 276
    .local v2, "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    if-nez v2, :cond_0

    invoke-static {}, Lagv;->h()Lahk;

    move-result-object v3

    invoke-virtual {v3}, Lahk;->h()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 277
    invoke-static {}, Lagv;->h()Lahk;

    move-result-object v3

    invoke-virtual {v3}, Lahk;->e_()V

    .line 278
    invoke-static {}, Lagv;->h()Lahk;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lahk;->d(Z)V

    .line 282
    :cond_0
    invoke-static {}, Lagv;->r()Lahc;

    move-result-object v1

    .line 284
    .local v1, "headsetHelper":Lahc;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lahc;->e()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 285
    invoke-virtual {v1}, Lahc;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .end local v1    # "headsetHelper":Lahc;
    .end local v2    # "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    :cond_1
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "HomeNewUserGuideHelper"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
