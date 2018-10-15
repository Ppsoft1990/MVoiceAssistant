.class Lcom/iflytek/framework/business/BusinessManagerImpl$EventObj;
.super Ljava/lang/Object;
.source "BusinessManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/business/BusinessManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventObj"
.end annotation


# instance fields
.field public mEvent:Ljava/lang/Object;

.field public mObjects:[Ljava/lang/Object;

.field final synthetic this$0:Lcom/iflytek/framework/business/BusinessManagerImpl;


# direct methods
.method private constructor <init>(Lcom/iflytek/framework/business/BusinessManagerImpl;)V
    .locals 0

    .prologue
    .line 587
    iput-object p1, p0, Lcom/iflytek/framework/business/BusinessManagerImpl$EventObj;->this$0:Lcom/iflytek/framework/business/BusinessManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/framework/business/BusinessManagerImpl;Lcom/iflytek/framework/business/BusinessManagerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/framework/business/BusinessManagerImpl;
    .param p2, "x1"    # Lcom/iflytek/framework/business/BusinessManagerImpl$1;

    .prologue
    .line 587
    invoke-direct {p0, p1}, Lcom/iflytek/framework/business/BusinessManagerImpl$EventObj;-><init>(Lcom/iflytek/framework/business/BusinessManagerImpl;)V

    return-void
.end method
