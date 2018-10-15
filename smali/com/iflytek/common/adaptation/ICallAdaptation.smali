.class public interface abstract Lcom/iflytek/common/adaptation/ICallAdaptation;
.super Ljava/lang/Object;
.source "ICallAdaptation.java"


# virtual methods
.method public abstract endCall(Landroid/content/Intent;)V
.end method

.method public abstract filterPhoneStateChangeReceiver(Landroid/content/Intent;)Lgy;
.end method

.method public abstract getActions()Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDialCallIntent(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public abstract isPhoneAction(Ljava/lang/String;)Z
.end method
