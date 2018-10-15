.class Lcom/iflytek/common/adaptation/AdaptationManager$SingletionHolder;
.super Ljava/lang/Object;
.source "AdaptationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/common/adaptation/AdaptationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SingletionHolder"
.end annotation


# static fields
.field static mInstance:Lcom/iflytek/common/adaptation/AdaptationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 95
    new-instance v0, Lcom/iflytek/common/adaptation/AdaptationManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iflytek/common/adaptation/AdaptationManager;-><init>(Lcom/iflytek/common/adaptation/AdaptationManager$1;)V

    sput-object v0, Lcom/iflytek/common/adaptation/AdaptationManager$SingletionHolder;->mInstance:Lcom/iflytek/common/adaptation/AdaptationManager;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
