.class Lcom/iflytek/framework/business/components/PicComponents$3;
.super Ljava/lang/Object;
.source "PicComponents.java"

# interfaces
.implements Lazd$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/business/components/PicComponents;
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
    .line 174
    iput-object p1, p0, Lcom/iflytek/framework/business/components/PicComponents$3;->this$0:Lcom/iflytek/framework/business/components/PicComponents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 183
    const-string/jumbo v0, "Business_PicComponents"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "select failed errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/iflytek/framework/business/components/PicComponents$3;->this$0:Lcom/iflytek/framework/business/components/PicComponents;

    const-string/jumbo v1, ""

    invoke-static {v0, p1, v1}, Lcom/iflytek/framework/business/components/PicComponents;->access$200(Lcom/iflytek/framework/business/components/PicComponents;ILjava/lang/String;)V

    .line 185
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "picUrl"    # Ljava/lang/String;

    .prologue
    .line 177
    const-string/jumbo v0, "Business_PicComponents"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "select success picUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/iflytek/framework/business/components/PicComponents$3;->this$0:Lcom/iflytek/framework/business/components/PicComponents;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/iflytek/framework/business/components/PicComponents;->access$200(Lcom/iflytek/framework/business/components/PicComponents;ILjava/lang/String;)V

    .line 179
    return-void
.end method
