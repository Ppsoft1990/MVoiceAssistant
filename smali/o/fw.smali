.class public final Lo/fw;
.super Ljava/lang/Object;
.source "ThirdEventProcess.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Lcom/cmcc/migusso/sdk/common/ThirdEventListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/cmcc/migusso/sdk/common/ThirdEventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lo/fw;->c:Lcom/cmcc/migusso/sdk/common/ThirdEventListener;

    iput-object p1, p0, Lo/fw;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lo/fw;->b:Z

    return-void
.end method
