.class Ladr$1;
.super Ljava/lang/Object;
.source "AbsResultHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ladr;->b(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laec;

.field final synthetic b:Ladr;


# direct methods
.method constructor <init>(Ladr;Laec;)V
    .locals 0
    .param p1, "this$0"    # Ladr;

    .prologue
    .line 180
    iput-object p1, p0, Ladr$1;->b:Ladr;

    iput-object p2, p0, Ladr$1;->a:Laec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 184
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v0

    iget-object v1, p0, Ladr$1;->a:Laec;

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a(Laee;)V

    .line 185
    return-void
.end method
