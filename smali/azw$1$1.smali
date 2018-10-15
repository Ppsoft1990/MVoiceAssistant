.class Lazw$1$1;
.super Ljava/lang/Object;
.source "SoftBarUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazw$1;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lazw$1;


# direct methods
.method constructor <init>(Lazw$1;)V
    .locals 0
    .param p1, "this$1"    # Lazw$1;

    .prologue
    .line 90
    iput-object p1, p0, Lazw$1$1;->a:Lazw$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lazw$1$1;->a:Lazw$1;

    iget-object v0, v0, Lazw$1;->a:Lazw;

    invoke-static {v0}, Lazw;->d(Lazw;)V

    .line 93
    return-void
.end method
