package me.paranoid.a;

import android.content.DialogInterface;

/* loaded from: classes.dex */
final class d implements DialogInterface.OnClickListener {
    d() {
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int r2) {
        dialogInterface.dismiss();
    }
}
