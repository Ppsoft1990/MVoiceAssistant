.class Lcom/iflytek/framework/business/speech/SpeechHandler$1;
.super Ljava/lang/Object;
.source "SpeechHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/business/speech/SpeechHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/business/speech/SpeechHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/business/speech/SpeechHandler;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$1;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler$1;->this$0:Lcom/iflytek/framework/business/speech/SpeechHandler;

    invoke-static {v0}, Lcom/iflytek/framework/business/speech/SpeechHandler;->access$000(Lcom/iflytek/framework/business/speech/SpeechHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpu;->a(Landroid/content/Context;)V

    .line 192
    return-void
.end method
