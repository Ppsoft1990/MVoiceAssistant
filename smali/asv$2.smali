.class Lasv$2;
.super Ljava/lang/Object;
.source "PluginLabelItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lasv;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lasv;


# direct methods
.method constructor <init>(Lasv;)V
    .locals 0
    .param p1, "this$0"    # Lasv;

    .prologue
    .line 100
    iput-object p1, p0, Lasv$2;->a:Lasv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v6, 0x0

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 107
    .local v2, "now":J
    iget-object v1, p0, Lasv$2;->a:Lasv;

    invoke-static {v1}, Lasv;->b(Lasv;)J

    move-result-wide v4

    sub-long v4, v2, v4

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    .line 108
    iget-object v1, p0, Lasv$2;->a:Lasv;

    invoke-static {v1, v6, v7}, Lasv;->a(Lasv;J)J

    .line 112
    :cond_0
    iget-object v1, p0, Lasv$2;->a:Lasv;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lasv;->a(Lasv;J)J

    .line 114
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lasv$2;->a:Lasv;

    iget-object v1, v1, Lasv;->k:Landroid/content/Context;

    const-class v4, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lasv$2;->a:Lasv;

    iget-object v1, v1, Lasv;->k:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 119
    invoke-static {}, Laso;->a()Laso;

    move-result-object v1

    const/4 v4, 0x0

    .line 120
    invoke-virtual {v1, v4}, Laso;->b(Z)V

    .line 121
    iget-object v1, p0, Lasv$2;->a:Lasv;

    invoke-static {v1}, Lasv;->c(Lasv;)V

    .line 122
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v1, p0, Lasv$2;->a:Lasv;

    invoke-static {v1}, Lasv;->b(Lasv;)J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    goto :goto_0
.end method
