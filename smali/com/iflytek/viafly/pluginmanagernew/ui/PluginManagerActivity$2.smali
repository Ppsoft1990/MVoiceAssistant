.class Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity$2;
.super Ljava/lang/Object;
.source "PluginManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity$2;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-wide/16 v6, 0x0

    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 298
    .local v2, "now":J
    iget-object v4, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity$2;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;

    invoke-static {v4}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->a(Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;)J

    move-result-wide v4

    sub-long v4, v2, v4

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    .line 299
    iget-object v4, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity$2;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;

    invoke-static {v4, v6, v7}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->a(Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;J)J

    .line 303
    :cond_0
    iget-object v4, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity$2;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->a(Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;J)J

    .line 305
    const-string/jumbo v4, "PluginManagerActivity"

    const-string/jumbo v5, "--------------->>> onItemClick()"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    .line 308
    :cond_1
    const-string/jumbo v4, "PluginManagerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "view or tag is null -->view "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_2
    :goto_0
    return-void

    .line 300
    :cond_3
    iget-object v4, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity$2;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;

    invoke-static {v4}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->a(Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;)J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    goto :goto_0

    .line 312
    :cond_4
    const/4 v0, -0x1

    .line 313
    .local v0, "id":I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 314
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 317
    :cond_5
    iget-object v4, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity$2;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;

    invoke-static {v4, v0}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->a(Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;I)Lasq;

    move-result-object v1

    .line 318
    .local v1, "item":Lasq;
    if-eqz v1, :cond_2

    .line 319
    invoke-virtual {v1}, Lasq;->c()V

    goto :goto_0
.end method
