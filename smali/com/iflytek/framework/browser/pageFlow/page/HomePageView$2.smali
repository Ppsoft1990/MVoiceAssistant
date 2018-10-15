.class Lcom/iflytek/framework/browser/pageFlow/page/HomePageView$2;
.super Ljava/lang/Object;
.source "HomePageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    .prologue
    .line 813
    iput-object p1, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView$2;->a:Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView$2;->a:Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->s()V

    .line 817
    return-void
.end method
