.class Lcom/iflytek/viafly/Home$4;
.super Ljava/lang/Object;
.source "Home.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/Home;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/Home;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/Home;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/Home;

    .prologue
    .line 1475
    iput-object p1, p0, Lcom/iflytek/viafly/Home$4;->a:Lcom/iflytek/viafly/Home;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/iflytek/viafly/Home$4;->a:Lcom/iflytek/viafly/Home;

    invoke-static {v0}, Lcom/iflytek/viafly/Home;->m(Lcom/iflytek/viafly/Home;)Lbaf;

    move-result-object v0

    invoke-virtual {v0}, Lbaf;->a()V

    .line 1479
    return-void
.end method
