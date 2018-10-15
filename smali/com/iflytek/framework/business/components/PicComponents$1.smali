.class Lcom/iflytek/framework/business/components/PicComponents$1;
.super Ljava/lang/Object;
.source "PicComponents.java"

# interfaces
.implements Lbad$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/business/components/PicComponents;->onExec(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/framework/business/components/PicComponents;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/business/components/PicComponents;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/business/components/PicComponents;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/iflytek/framework/business/components/PicComponents$1;->this$0:Lcom/iflytek/framework/business/components/PicComponents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public imgComplete(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/iflytek/framework/business/components/PicComponents$1;->this$0:Lcom/iflytek/framework/business/components/PicComponents;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/iflytek/framework/business/components/PicComponents;->access$000(Lcom/iflytek/framework/business/components/PicComponents;ILjava/lang/String;)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/business/components/PicComponents$1;->this$0:Lcom/iflytek/framework/business/components/PicComponents;

    const v1, 0x3a984

    invoke-static {v0, v1, p1}, Lcom/iflytek/framework/business/components/PicComponents;->access$000(Lcom/iflytek/framework/business/components/PicComponents;ILjava/lang/String;)V

    goto :goto_0
.end method
