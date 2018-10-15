.class Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1$2;
.super Ljava/lang/Object;
.source "HomeBannerCardView.java"

# interfaces
.implements Lajc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;->handleMessage(Landroid/os/Message;)Z
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
        "Laje;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1$2;->a:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Laje;
    .locals 1

    .prologue
    .line 202
    new-instance v0, Laje;

    invoke-direct {v0}, Laje;-><init>()V

    return-object v0
.end method

.method public synthetic createHolder()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1$2;->a()Laje;

    move-result-object v0

    return-object v0
.end method
