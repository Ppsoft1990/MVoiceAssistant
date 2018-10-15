.class Lbbp$1;
.super Ljava/lang/Object;
.source "SpeechWakeManagerImpl.java"

# interfaces
.implements Lcom/iflytek/yd/base/ProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbbp;


# direct methods
.method constructor <init>(Lbbp;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 50
    iput-object p1, p0, Lbbp$1;->a:Lbbp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProcessRestart()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method
