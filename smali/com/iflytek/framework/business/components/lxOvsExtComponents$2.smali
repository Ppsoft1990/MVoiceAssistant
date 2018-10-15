.class Lcom/iflytek/framework/business/components/lxOvsExtComponents$2;
.super Ljava/lang/Object;
.source "lxOvsExtComponents.java"

# interfaces
.implements Laas$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/business/components/lxOvsExtComponents;->onExec(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/framework/business/components/lxOvsExtComponents;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/business/components/lxOvsExtComponents;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/business/components/lxOvsExtComponents;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/iflytek/framework/business/components/lxOvsExtComponents$2;->this$0:Lcom/iflytek/framework/business/components/lxOvsExtComponents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Lcom/iflytek/yd/system/SimType;)V
    .locals 3
    .param p1, "simType"    # Lcom/iflytek/yd/system/SimType;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/iflytek/framework/business/components/lxOvsExtComponents$2;->this$0:Lcom/iflytek/framework/business/components/lxOvsExtComponents;

    invoke-virtual {v0}, Lcom/iflytek/framework/business/components/lxOvsExtComponents;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u6b63\u5728\u4e3a\u60a8\u53d1\u9001\u514d\u8d39\u77ed\u4fe1\uff0c\u8bf7\u6ce8\u610f\u67e5\u6536"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 120
    return-void
.end method
