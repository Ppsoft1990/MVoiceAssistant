.class Lcom/iflytek/framework/business/components/AudioComponents$1;
.super Ljava/lang/Object;
.source "AudioComponents.java"

# interfaces
.implements Lul$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/business/components/AudioComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/framework/business/components/AudioComponents;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/business/components/AudioComponents;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/business/components/AudioComponents;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/iflytek/framework/business/components/AudioComponents$1;->this$0:Lcom/iflytek/framework/business/components/AudioComponents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/iflytek/framework/business/components/AudioComponents$1;->this$0:Lcom/iflytek/framework/business/components/AudioComponents;

    invoke-static {v0, p1}, Lcom/iflytek/framework/business/components/AudioComponents;->access$100(Lcom/iflytek/framework/business/components/AudioComponents;I)V

    .line 93
    return-void
.end method

.method public onSuccess(I)V
    .locals 2
    .param p1, "audioId"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/framework/business/components/AudioComponents$1;->this$0:Lcom/iflytek/framework/business/components/AudioComponents;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/iflytek/framework/business/components/AudioComponents;->access$000(Lcom/iflytek/framework/business/components/AudioComponents;II)V

    .line 88
    return-void
.end method
