.class Lcom/iflytek/framework/browser/mic/MainSpeechView$4;
.super Ljava/lang/Object;
.source "MainSpeechView.java"

# interfaces
.implements Lre;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/browser/mic/MainSpeechView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/framework/browser/mic/MainSpeechView;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/browser/mic/MainSpeechView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/browser/mic/MainSpeechView;

    .prologue
    .line 649
    iput-object p1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView$4;->a:Lcom/iflytek/framework/browser/mic/MainSpeechView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 659
    return-void
.end method

.method public a(Lrc;)V
    .locals 2
    .param p1, "result"    # Lrc;

    .prologue
    .line 652
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView$4;->a:Lcom/iflytek/framework/browser/mic/MainSpeechView;

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lrf;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 653
    .local v0, "temp":Ljava/util/List;, "Ljava/util/List<Lrf;>;"
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView$4;->a:Lcom/iflytek/framework/browser/mic/MainSpeechView;

    invoke-static {v1}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->g(Lcom/iflytek/framework/browser/mic/MainSpeechView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 654
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView$4;->a:Lcom/iflytek/framework/browser/mic/MainSpeechView;

    invoke-static {v1}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->g(Lcom/iflytek/framework/browser/mic/MainSpeechView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 655
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView$4;->a:Lcom/iflytek/framework/browser/mic/MainSpeechView;

    invoke-static {v1}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->b(Lcom/iflytek/framework/browser/mic/MainSpeechView;)Lqp;

    move-result-object v1

    invoke-virtual {v1}, Lqp;->notifyDataSetChanged()V

    .line 656
    return-void
.end method
