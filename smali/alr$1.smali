.class Lalr$1;
.super Ljava/lang/Object;
.source "HomeOpCodesHelper.java"

# interfaces
.implements Lalt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lalr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lalr;


# direct methods
.method constructor <init>(Lalr;)V
    .locals 0
    .param p1, "this$0"    # Lalr;

    .prologue
    .line 37
    iput-object p1, p0, Lalr$1;->a:Lalr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "returnCode"    # Ljava/lang/String;
    .param p2, "opCode"    # Ljava/lang/String;
    .param p3, "tip"    # Ljava/lang/String;

    .prologue
    .line 41
    return-void
.end method

.method public onError(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 50
    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lalr$1;->a:Lalr;

    invoke-virtual {v0, p1}, Lalr;->a(Ljava/lang/String;)V

    .line 46
    return-void
.end method
