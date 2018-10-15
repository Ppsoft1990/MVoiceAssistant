.class public abstract Lcom/iflytek/framework/ui/share/AbsShareResultListener;
.super Ljava/lang/Object;
.source "AbsShareResultListener.java"

# interfaces
.implements Lcom/iflytek/framework/ui/share/IShareResultListener;
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public onResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "shareId"    # Ljava/lang/String;

    .prologue
    .line 12
    return-void
.end method
