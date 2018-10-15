.class Lcom/iflytek/framework/business/components/ListeningComponents$2;
.super Ljava/lang/Object;
.source "ListeningComponents.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/business/components/ListeningComponents;->handleLastResult(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/framework/business/components/ListeningComponents;

.field final synthetic val$mAudioId:I


# direct methods
.method constructor <init>(Lcom/iflytek/framework/business/components/ListeningComponents;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/business/components/ListeningComponents;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/iflytek/framework/business/components/ListeningComponents$2;->this$0:Lcom/iflytek/framework/business/components/ListeningComponents;

    iput p2, p0, Lcom/iflytek/framework/business/components/ListeningComponents$2;->val$mAudioId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 355
    invoke-static {}, Lank;->a()Lank;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/framework/business/components/ListeningComponents$2;->val$mAudioId:I

    invoke-virtual {v0, v1}, Lank;->a(I)J

    .line 356
    return-void
.end method
