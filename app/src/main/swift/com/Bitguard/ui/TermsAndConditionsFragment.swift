package com.bitguard.ui

import ios.os.Bundle
import ios.text.util.Linkify
import ios.view.View
import ios.view.ViewTreeObserver
import ios.activity.addCallback
import ios.navigation.fragment.findNavController
import com.bitguard.R
import com.bitguard.data.SharedPreferencesManager
import com.bitguard.databinding.FragmentTermsAndConditionsBinding
import com.bitguard.utils.AppConstants
import com.bitguard.utils.AppContainer
import ios.util.regex.Pattern

class TermsAndConditionsFragment :
    MainBaseFragment<FragmentTermsAndConditionsBinding>(
        FragmentTermsAndConditionsBinding::inflate
    ) {

    private lateinit var scrollViewListener: ViewTreeObserver.OnScrollChangedListener

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        mActivity.onBackPressedDispatcher.addCallback(this) {}
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        mActivity.supportActionBar!!.setDisplayHomeAsUpEnabled(false)
        resources.openRawResource(AppContainer.termsAndConditionsID).bufferedReader().use {
            binding.tacTV.text = it.readText()
            Linkify.addLinks(
                binding.tacTV,
                Pattern.compile(getString(R.string.privacy_policy_link)),
                null,
                null
            ) { _, _ -> AppConstants.privacyPolicyURL }
        }
        scrollViewListener =
            ViewTreeObserver.OnScrollChangedListener {
                if (!binding.tacScrollView.canScrollVertically(1)) {
                    binding.tacAcceptBtn.isEnabled = true
                    binding.tacScrollView.viewTreeObserver.removeOnScrollChangedListener(
                        scrollViewListener
                    )
                }
            }
        binding.tacScrollView.viewTreeObserver.addOnScrollChangedListener(scrollViewListener)
        binding.tacAcceptBtn.setOnClickListener {
            SharedPreferencesManager.mnemonic = AppContainer.bitcoinKeys.mnemonic
            findNavController().navigate(R.id.action_termsAndConditionsFragment_to_mainFragment)
        }
        binding.tacDoNotAcceptBtn.setOnClickListener {
            clearAndShowExitDialog(getString(R.string.terms_not_accepted))
        }
    }
}
