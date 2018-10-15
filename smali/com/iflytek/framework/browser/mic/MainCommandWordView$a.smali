.class Lcom/iflytek/framework/browser/mic/MainCommandWordView$a;
.super Ljava/lang/Object;
.source "MainCommandWordView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/browser/mic/MainCommandWordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/framework/browser/mic/MainCommandWordView;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/iflytek/framework/browser/mic/MainCommandWordView;Ljava/lang/String;)V
    .locals 0
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/iflytek/framework/browser/mic/MainCommandWordView$a;->a:Lcom/iflytek/framework/browser/mic/MainCommandWordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p2, p0, Lcom/iflytek/framework/browser/mic/MainCommandWordView$a;->b:Ljava/lang/String;

    .line 136
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainCommandWordView$a;->a:Lcom/iflytek/framework/browser/mic/MainCommandWordView;

    invoke-static {v2}, Lcom/iflytek/framework/browser/mic/MainCommandWordView;->a(Lcom/iflytek/framework/browser/mic/MainCommandWordView;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainCommandWordView$a;->a:Lcom/iflytek/framework/browser/mic/MainCommandWordView;

    invoke-static {v2}, Lcom/iflytek/framework/browser/mic/MainCommandWordView;->a(Lcom/iflytek/framework/browser/mic/MainCommandWordView;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 141
    const-string/jumbo v0, "MainCommandWordView"

    const-string/jumbo v1, "you click so fast, please slow down."

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainCommandWordView$a;->a:Lcom/iflytek/framework/browser/mic/MainCommandWordView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/mic/MainCommandWordView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v0

    const-string/jumbo v1, "FT90006"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 145
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainCommandWordView$a;->a:Lcom/iflytek/framework/browser/mic/MainCommandWordView;

    invoke-static {v0}, Lcom/iflytek/framework/browser/mic/MainCommandWordView;->b(Lcom/iflytek/framework/browser/mic/MainCommandWordView;)Lqr;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainCommandWordView$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lqr;->a(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainCommandWordView$a;->a:Lcom/iflytek/framework/browser/mic/MainCommandWordView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/iflytek/framework/browser/mic/MainCommandWordView;->a(Lcom/iflytek/framework/browser/mic/MainCommandWordView;J)J

    goto :goto_0
.end method
