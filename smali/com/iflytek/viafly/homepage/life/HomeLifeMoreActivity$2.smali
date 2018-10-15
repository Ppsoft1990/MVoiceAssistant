.class Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity$2;
.super Ljava/lang/Object;
.source "HomeLifeMoreActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity$2;->a:Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity$2;->a:Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->a:Laku;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity$2;->a:Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->a(Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Laku;->a(Ljava/util/List;)V

    .line 357
    return-void
.end method
