.class Lxx$a;
.super Ljava/lang/Object;
.source "UserManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

.field b:[B

.field final synthetic c:Lxx;


# direct methods
.method constructor <init>(Lxx;)V
    .locals 0
    .param p1, "this$0"    # Lxx;

    .prologue
    .line 91
    iput-object p1, p0, Lxx$a;->c:Lxx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
