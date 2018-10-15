.class Lcom/iflytek/viafly/im/IMHelper$1;
.super Ljava/lang/Object;
.source "IMHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/im/IMHelper;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/im/IMHelper;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/im/IMHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/im/IMHelper;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/iflytek/viafly/im/IMHelper$1;->this$0:Lcom/iflytek/viafly/im/IMHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 60
    :try_start_0
    new-instance v1, Landroid/app/Instrumentation;

    invoke-direct {v1}, Landroid/app/Instrumentation;-><init>()V

    .line 61
    .local v1, "inst":Landroid/app/Instrumentation;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v1    # "inst":Landroid/app/Instrumentation;
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "IMHelper"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
