.class Lcom/iflytek/framework/business/AbsBusinessHandler$ResultMessage;
.super Ljava/lang/Object;
.source "AbsBusinessHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/business/AbsBusinessHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResultMessage"
.end annotation


# instance fields
.field public mComponent:Lcom/iflytek/framework/ui/DisplayComponent;

.field public mTtsContent:Ljava/lang/String;

.field public mTtsParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/iflytek/framework/business/AbsBusinessHandler;


# direct methods
.method private constructor <init>(Lcom/iflytek/framework/business/AbsBusinessHandler;)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Lcom/iflytek/framework/business/AbsBusinessHandler$ResultMessage;->this$0:Lcom/iflytek/framework/business/AbsBusinessHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/framework/business/AbsBusinessHandler;Lcom/iflytek/framework/business/AbsBusinessHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/framework/business/AbsBusinessHandler;
    .param p2, "x1"    # Lcom/iflytek/framework/business/AbsBusinessHandler$1;

    .prologue
    .line 547
    invoke-direct {p0, p1}, Lcom/iflytek/framework/business/AbsBusinessHandler$ResultMessage;-><init>(Lcom/iflytek/framework/business/AbsBusinessHandler;)V

    return-void
.end method
