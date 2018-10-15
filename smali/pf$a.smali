.class public interface abstract Lpf$a;
.super Ljava/lang/Object;
.source "RecordPermissionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract onDenied(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onGranted(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;)V"
        }
    .end annotation
.end method
