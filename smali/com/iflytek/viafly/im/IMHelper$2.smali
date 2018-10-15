.class Lcom/iflytek/viafly/im/IMHelper$2;
.super Ljava/lang/Object;
.source "IMHelper.java"

# interfaces
.implements Lpg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/im/IMHelper;->chooseImage(Ljava/lang/String;Ljava/lang/String;)V
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
    .line 110
    iput-object p1, p0, Lcom/iflytek/viafly/im/IMHelper$2;->this$0:Lcom/iflytek/viafly/im/IMHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .local p2, "unrationaleList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Lpe;

    .line 119
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u5b58\u50a8\u5361\u8bfb\u5199\u6743\u9650\u88ab\u7981\u6b62\uff0c\u8bf7\u7ed9\u5e94\u7528\u6388\u4e88\u6b64\u6743\u9650\u540e\u518d\u8bd5"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 120
    return-void
.end method

.method public onGranted(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/im/IMHelper$2;->this$0:Lcom/iflytek/viafly/im/IMHelper;

    invoke-static {v0}, Lcom/iflytek/viafly/im/IMHelper;->access$000(Lcom/iflytek/viafly/im/IMHelper;)V

    .line 114
    return-void
.end method
