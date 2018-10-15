.class Lcom/iflytek/viafly/ui/view/banner/BannerCardView$MyHandler$1;
.super Ljava/lang/Object;
.source "BannerCardView.java"

# interfaces
.implements Lajc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/ui/view/banner/BannerCardView$MyHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lajc",
        "<",
        "Lcom/iflytek/viafly/ui/view/banner/BannerHolderView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ui/view/banner/BannerCardView$MyHandler;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/view/banner/BannerCardView$MyHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/view/banner/BannerCardView$MyHandler;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView$MyHandler$1;->this$0:Lcom/iflytek/viafly/ui/view/banner/BannerCardView$MyHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createHolder()Lcom/iflytek/viafly/ui/view/banner/BannerHolderView;
    .locals 1

    .prologue
    .line 228
    new-instance v0, Lcom/iflytek/viafly/ui/view/banner/BannerHolderView;

    invoke-direct {v0}, Lcom/iflytek/viafly/ui/view/banner/BannerHolderView;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createHolder()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView$MyHandler$1;->createHolder()Lcom/iflytek/viafly/ui/view/banner/BannerHolderView;

    move-result-object v0

    return-object v0
.end method
