.class Lcom/iflytek/viafly/Home$2;
.super Ljava/lang/Object;
.source "Home.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/Home;->a(Landroid/content/Intent;)V
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
    .line 1034
    iput-object p1, p0, Lcom/iflytek/viafly/Home$2;->a:Lcom/iflytek/viafly/Home;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1038
    const-string/jumbo v0, "Home"

    const-string/jumbo v1, "start verify auth----------------"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lakf;

    const-string/jumbo v2, "AuthRequestEvent"

    invoke-direct {v1, v2}, Lakf;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1045
    return-void
.end method
